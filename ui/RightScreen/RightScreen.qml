import QtQuick 2.15
import QtQuick.Window 2.15
import QtLocation
import QtPositioning
import QtQuick.Controls

Rectangle{
    id: mapBox
    //        color: "#696969"
    width: parent.width * 0.8
    height: parent.height * 0.9
    anchors {
        top: parent.top
        right: parent.right
    }

    property real topButtonSize: parent.height/30
    property real bigButtonSize: parent.height/20
    property int topButtonMargin: 10

    MapProvider1{
        id: map1
        anchors.fill: parent
        visible: false
    }
    MapProvider2{
        id: map2
        anchors.fill: parent
        visible: true
    }
    Image{
        id: changeMapButton
        anchors{
            left: parent.left
            top: parent.top
            margins: topButtonMargin

        }
        width: topButtonSize
        height: topButtonSize
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/treasure-map.png"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                map1.visible = !map1.visible
                map2.visible = !map2.visible
            }
        }
    }
    Image{
        id: positionButton
        anchors{
            left: changeMapButton.right
            top: parent.top
            margins: topButtonMargin

        }
        width: topButtonSize
        height: topButtonSize
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/position.png"
        MouseArea{
            anchors.fill: parent
            onClicked: positionPopup.open()
        }
        Popup{
            id: positionPopup
            x: 0
            y: parent.height
            width: parent.width*5
            height: parent.height*5
            Rectangle{
                anchors.fill: parent
                color: "#808080"
            }
        }
    }
    Rectangle{
        id: lockButton
        color: "white"
        property bool logFlag: true
        anchors{
            top: parent.top
            right: parent.right
            margins: topButtonMargin
        }
        height: bigButtonSize
        width: bigButtonSize
        radius: bigButtonSize/2
        Image{
            anchors.centerIn: parent
            height: bigButtonSize/2
            width: bigButtonSize/2
            fillMode: Image.PreserveAspectFit
            source: lockButton.logFlag ? "qrc:/ui/assets/padlock.png" : "qrc:/ui/assets/open-padlock.png"
            MouseArea{
                anchors.fill: parent
                onClicked: lockButton.logFlag = !lockButton.logFlag
            }
        }
    }



    Image{
        id: targetSign
        anchors.centerIn: parent
        width: parent.width/20
        height: width
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/aim.png"

    }
}
