import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    width: parent.width/5
    height: width/5
    color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
    property alias tacticSelected: textTactic.text
    property int textSize: app_parameter.textPixelSize
    Text {
        id:  labelPart
        font.pixelSize: textSize
        text: "Chọn chiến thuật "
        anchors.centerIn: parent
    }

    Rectangle{
        id: tacticField
        anchors{
            left: parent.right
        }
        width: parent.width
        height: parent.height
        color: "white"
        Text{
            id: textTactic
            anchors.centerIn: parent
            text: "Bắn đơn"
            font.pixelSize: textSize
        }
        MouseArea{
            anchors.fill: parent
            onClicked: tacticPopup.open()
        }
    }

    Popup{
        id: tacticPopup
        x: parent.width
        y: -parent.height
        width: parent.width
        height: parent.height*2
        Rectangle{
            id: tacticStyle1
            anchors{
                top: parent.top
                left: parent.left
                right: parent.right
            }
            height: parent.height/2
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "Bắn đơn"
                font.pixelSize: textSize
            }

            MouseArea{
                anchors.fill: parent
                onClicked:{
                    tacticPopup.close()
                    textTactic.text = "Bắn đơn"
                }
            }
        }
        Rectangle{
            id: tacticStyle2
            anchors{
                top: tacticStyle1.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/2
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "Bắn liên thanh"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    tacticPopup.close()
                    textTactic.text = "Bắn liên thanh"
                }
            }
        }
    }
}
