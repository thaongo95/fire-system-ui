import QtQuick 2.15
import QtQuick.Window
import QtLocation
import QtQuick.Controls
import QtPositioning
import QtQml 2.12

Rectangle{
    id: mapProvider
    width: parent.width
    height: parent.height
    anchors.fill: parent
    property alias mapOneDisplay: map1.visible
    property string urlMap1: "qrc:/ui/providers/map"
    property string urlMap2: "qrc:/ui/providers/satellite"
    Plugin {
        id: mapPlugin1
        name: "osm"
        PluginParameter { name: "osm.mapping.providersrepository.address"; value: Qt.resolvedUrl(urlMap1) }
        PluginParameter { name: "osm.mapping.cache.directory"; value: "cache" }
        PluginParameter { name: "osm.mapping.cache.disk.size"; value: 0 }
    }    Plugin {
        id: mapPlugin2
        name: "osm"
        PluginParameter { name: "osm.mapping.providersrepository.address"; value: Qt.resolvedUrl(urlMap2) }
        PluginParameter { name: "osm.mapping.cache.directory"; value: "cache" }
        PluginParameter { name: "osm.mapping.cache.disk.size"; value: 0 }
    }
    Map {
        id: map1
        anchors.fill: parent
        plugin: mapPlugin1
        center: QtPositioning.coordinate(16.27896, 106.18495)
//        zoomLevel: 14

        property geoCoordinate startCentroid

        PinchHandler {
           id: pinch
           target: null
           onActiveChanged: if (active) {
               map.startCentroid = map.toCoordinate(pinch.centroid.position, false)
           }
           onScaleChanged: (delta) => {
               map.zoomLevel += Math.log2(delta)
               map.alignCoordinateToPoint(map.startCentroid, pinch.centroid.position)
           }
           onRotationChanged: (delta) => {
               map.bearing -= delta
               map.alignCoordinateToPoint(map.startCentroid, pinch.centroid.position)
           }
           grabPermissions: PointerHandler.TakeOverForbidden
        }
        WheelHandler {
           id: wheel
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
           id: drag
           target: null
           onTranslationChanged: (delta) => map.pan(-delta.x, -delta.y)
        }
        Shortcut {
           enabled: map.zoomLevel < map.maximumZoomLevel
           sequence: StandardKey.ZoomIn
           onActivated: map.zoomLevel = Math.round(map.zoomLevel + 1)
        }
        Shortcut {
           enabled: map.zoomLevel > map.minimumZoomLevel
           sequence: StandardKey.ZoomOut
           onActivated: map.zoomLevel = Math.round(map.zoomLevel - 1)
        }
    }
}
