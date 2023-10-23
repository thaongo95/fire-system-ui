import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    width: parent.width/5
    height: width/5
    color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
    property alias fontValue: textFont.font.pixelSize
    property int textSize: app_parameter.textPixelSize
    Text {
        id:  labelPart
        font.pixelSize: textSize
        text: "Cỡ chữ"
        anchors.centerIn: parent
    }

    Rectangle{
        id: fontField
        anchors{
            left: parent.right
        }
        width: parent.width
        height: parent.height
        color: "white"
        Text{
            id: textFont
            anchors.centerIn: parent
            text: "Trung bình"
            font.pixelSize: textSize
        }
        MouseArea{
            anchors.fill: parent
            onClicked: colorPopup.open()
        }
    }

    Popup{
        id: colorPopup
        x: parent.width
        y: -parent.height*2
        width: parent.width
        height: parent.height*5
        Rectangle{
            id: fontStyle1
            anchors{
                top: parent.top
                left: parent.left
                right: parent.right
            }
            height: parent.height/5
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "Rất to"
                font.pixelSize: textSize
            }

            MouseArea{
                anchors.fill: parent
                onClicked:{
                    colorPopup.close()
                    textFont.text = "Rất to"
                    textFont.font.pixelSize = 18
                }
            }
        }
        Rectangle{
            id: fontStyle2
            anchors{
                top: fontStyle1.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/5
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "To"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    textFont.text = "To"
                    textFont.font.pixelSize = 16
                }
            }
        }
        Rectangle{
            id: fontStyle3
            anchors{
                top: fontStyle2.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/5
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "Trung bình"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    textFont.text = "Trung bình"
                    textFont.font.pixelSize = 14
                }
            }
        }
        Rectangle{
            id: fontStyle4
            anchors{
                top: fontStyle3.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/5
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "Nhỏ"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    textFont.text = "Nhỏ"
                    textFont.font.pixelSize = 12
                }
            }
        }
        Rectangle{
            id: fontStyle5
            anchors{
                top: fontStyle4.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/5
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "Rất nhỏ"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    textFont.text = "Rất nhỏ"
                    textFont.font.pixelSize = 10
                }
            }
        }
    }
}
