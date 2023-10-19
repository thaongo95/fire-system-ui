import QtQuick 2.15
import QtQuick.Window 2.15
import QtLocation
import QtPositioning
import QtQuick.Controls

Item{
    id: mapContainer
    Plugin {
        id: mapPlugin1
        name: "osm"
        PluginParameter { name: "osm.mapping.providersrepository.address"; value: Qt.resolvedUrl("qrc:/ui/providers/map") }
        PluginParameter { name: "osm.mapping.cache.directory"; value: "cache" }
        PluginParameter { name: "osm.mapping.cache.disk.size"; value: 0 }
    }
    Map {
        id: map1
        anchors.fill: parent
        plugin: mapPlugin1
        center: QtPositioning.coordinate(21.69891, 105.24492)
        zoomLevel: 14
        property geoCoordinate startCentroid
        PinchHandler {
           id: pinch1
           target: null
           onActiveChanged: if (active) {
               map1.startCentroid = map1.toCoordinate(pinch1.centroid.position, false)
           }
           onScaleChanged: (delta) => {
               map1.zoomLevel += Math.log2(delta)
               map1.alignCoordinateToPoint(map1.startCentroid, pinch1.centroid.position)
           }
           onRotationChanged: (delta) => {
               map1.bearing -= delta
               map1.alignCoordinateToPoint(map1.startCentroid, pinch1.centroid.position)
           }
           grabPermissions: PointerHandler.TakeOverForbidden
        }
        WheelHandler {
           id: wheel1
           // workaround for QTBUG-87646 / QTBUG-112394 / QTBUG-112432:
           // Magic Mouse pretends to be a trackpad but doesn't work with PinchHandler
           // and we don't yet distinguish mice and trackpads on Wayland either
           acceptedDevices: Qt.platform.pluginName === "cocoa" || Qt.platform.pluginName === "wayland"
                            ? PointerDevice.Mouse | PointerDevice.TouchPad
                            : PointerDevice.Mouse
           rotationScale: 1/120
           property: "zoomLevel"
        }
        DragHandler {
           id: drag1
           target: null
           onTranslationChanged: (delta) => map1.pan(-delta.x, -delta.y)
        }
        Shortcut {
           enabled: map1.zoomLevel < map1.maximumZoomLevel
           sequence: StandardKey.ZoomIn
           onActivated: map1.zoomLevel = Math.round(map1.zoomLevel + 1)
        }
        Shortcut {
           enabled: map1.zoomLevel > map1.minimumZoomLevel
           sequence: StandardKey.ZoomOut
           onActivated: map1.zoomLevel = Math.round(map1.zoomLevel - 1)
        }
    }
}
