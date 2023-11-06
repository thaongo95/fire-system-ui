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
        anchors.fill: screen_param.screenFlag ? map1.parent : smallScreen
        z: screen_param.screenFlag ? 0 : 1
        visible: true
        MouseArea{
            anchors.fill: parent
            onClicked: {
                if (screen_param.screenFlag === false)
                    screen_param.screenFlag = !screen_param.screenFlag
            }
        }
    }
    MapProvider2{
        id: map2
        anchors.fill: screen_param.screenFlag ? map2.parent : smallScreen
        z: screen_param.screenFlag ? 0 : 1
        visible: false
        MouseArea{
            anchors.fill: parent
            onClicked: {
                if (screen_param.screenFlag === false)
                    screen_param.screenFlag = !screen_param.screenFlag
            }
        }
    }
    CameraPlace{
        id: camHolder
        anchors.fill: !screen_param.screenFlag ? camHolder.parent : smallScreen
        z: !screen_param.screenFlag ? 0 : 1
        visible: true
        MouseArea{
            anchors.fill: parent
            onClicked: {
                if (screen_param.screenFlag === true)
                    screen_param.screenFlag = !screen_param.screenFlag
            }
        }
    }

    Rectangle{
        id: smallScreen
        color: "red"
        height: parent.height/4
        width: parent.width/4
        anchors{
            left: parent.left
            bottom: parent.bottom
            margins: 10
        }
    }


    MapSwaper{
        id: changeMapButton
        anchors{
            left: parent.left
            top: parent.top
            margins: topButtonMargin

        }
        width: topButtonSize
        MouseArea{
            anchors.fill: parent
            onClicked: {
                map1.visible = !map1.visible
                map2.visible = !map2.visible
            }
        }

    }
    PotisionButton{
        id: positionButton
        width: topButtonSize
        anchors{
            left: changeMapButton.right
            top: parent.top
            margins: topButtonMargin
        }

    }
    CenterButton{
        id: centerButton
        width: topButtonSize
        anchors{
            left: positionButton.right
            top: parent.top
            margins: topButtonMargin
        }     
    }

    LockButton{
        id: lockButton
        width: bigButtonSize
        anchors{
            top: parent.top
            right: parent.right
            margins: topButtonMargin
        }
    }

    TargetSign{
        id: targetSign
        width: parent.width/30
        height: width
        visible: false
    }

}
