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
        visible: true
    }
    MapProvider2{
        id: map2
        anchors.fill: parent
        visible: false
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
        id: centerButton
        width: topButtonSize
        height: topButtonSize
        radius: width/2
        anchors{
            left: positionButton.right
            top: parent.top
            margins: topButtonMargin

        }
        Image{
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "qrc:/ui/assets/center.png"
        }
        MouseArea{
            anchors.fill: parent
            onClicked: {
                signal_param.setTarget_X(mapBox.width/2 - targetSign.width/2)
                signal_param.setTarget_Y(mapBox.height/2 - targetSign.width/2)
                targetSign.visible = !targetSign.visible
            }
        }
    }


    Rectangle{
        id: lockButton
        color: Qt.lighter(app_parameter.colorAppDanPhong, 1.5)
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
                onClicked: {
                    if (lockButton.logFlag==true){
                        app_parameter.setlockFlag("unlock")
                    }
                    else if(lockButton.logFlag==false){
                        app_parameter.setlockFlag("locked")
                    }
                    lockButton.logFlag = !lockButton.logFlag
                }
            }
        }
    }



    Item{
        id: targetSign
        property real x_value: signal_param.target_X
        property real y_value: signal_param.target_Y
        x: x_value
        y: y_value
        visible: false
        //anchors.centerIn: parent
        width: parent.width/30
        height: width
        Image{

            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
            source: "qrc:/ui/assets/aim.png"

        }
    }

}
