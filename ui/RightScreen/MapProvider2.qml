import QtQuick 2.15
import QtQuick.Window 2.15
import QtLocation
import QtPositioning
import QtQuick.Controls

Item {
    id: mapContainer
    property geoCoordinate positionPoint: QtPositioning.coordinate(map_param.cord_X, map_param.cord_Y)
    Plugin{
        id: mapPlugin2
        name: "osm"
        PluginParameter { name: "osm.mapping.providersrepository.address"; value: Qt.resolvedUrl("qrc:/ui/providers/satellite") }
        PluginParameter { name: "osm.mapping.cache.directory"; value: "cache" }
        PluginParameter { name: "osm.mapping.cache.disk.size"; value: 0 }
    }

    Map {
        id: map2
        anchors.fill: parent
        plugin: mapPlugin2
        center: positionPoint  //21.69891, 105.24492
        zoomLevel: 14
        property geoCoordinate startCentroid
        PinchHandler {
           id: pinch2
           target: null
           onActiveChanged: if (active) {
               map2.startCentroid = map2.toCoordinate(pinch2.centroid.position, false)
           }
           onScaleChanged: (delta) => {
               map2.zoomLevel += Math.log2(delta)
               map2.alignCoordinateToPoint(map2.startCentroid, pinch2.centroid.position)
           }
           onRotationChanged: (delta) => {
               map2.bearing -= delta
               map2.alignCoordinateToPoint(map2.startCentroid, pinch2.centroid.position)
           }
           grabPermissions: PointerHandler.TakeOverForbidden
        }
        WheelHandler {
           id: wheel2
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
           id: drag2
           target: null
           onTranslationChanged: (delta) => map2.pan(-delta.x, -delta.y)
        }
        Shortcut {
           enabled: map2.zoomLevel < map2.maximumZoomLevel
           sequence: StandardKey.ZoomIn
           onActivated: map2.zoomLevel = Math.round(map2.zoomLevel + 1)
        }
        Shortcut {
           enabled: map2.zoomLevel > map2.minimumZoomLevel
           sequence: StandardKey.ZoomOut
           onActivated: map2.zoomLevel = Math.round(map2.zoomLevel - 1)
        }
    }
}
