import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    width: parent.width/5
    height: width/5
    color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
    property alias colorBG: colorField.color
    property int textSize: app_parameter.textPixelSize
    Text {
        id:  labelPart
        font.pixelSize: textSize
        text: "Màu nền"
        anchors.centerIn: parent
    }
    Rectangle{
        id: colorField
        anchors{
            left: parent.right
        }
        width: parent.width
        height: parent.height
        color: app_parameter.colorAppDanPhong
        MouseArea{
            anchors.fill: parent
            onClicked: colorPopup.open()
        }
    }

    Popup{
        id: colorPopup
        x: parent.width
        y: -parent.height*5
        width: parent.width
        height: parent.height*10
        Rectangle{
            id: color1
            anchors{
                top: parent.top
                left: parent.left
                right: parent.right
            }
            height: parent.height/10
            color: "#483d8b"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    colorPopup.close()
                    colorField.color = "#483d8b"
                }
            }
        }
        Rectangle{
            id: color2
            anchors{
                top: color1.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/10
            color: "#66cdaa"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    colorField.color = "#66cdaa"
                }
            }
        }
        Rectangle{
            id: color3
            anchors{
                top: color2.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/10
            color: "#9370db"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    colorField.color = "#9370db"
                }
            }
        }
        Rectangle{
            id: color4
            anchors{
                top: color3.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/10
            color: "#ba55d3"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    colorField.color = "#ba55d3"
                }
            }
        }
        Rectangle{
            id: color5
            anchors{
                top: color4.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/10
            color: "#7b68ee"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    colorField.color = "#7b68ee"
                }
            }
        }
        Rectangle{
            id: color6
            anchors{
                top: color5.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/10
            color: "#c71585"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    colorField.color = "#c71585"
                }
            }
        }
        Rectangle{
            id: color7
            anchors{
                top: color6.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/10
            color: "#b0e0e6"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    colorField.color = "#b0e0e6"
                }
            }
        }
        Rectangle{
            id: color8
            anchors{
                top: color7.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/10
            color: "#cd853f"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    colorField.color = "#cd853f"
                }
            }
        }
        Rectangle{
            id: color9
            anchors{
                top: color8.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/10
            color: "#708090"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    colorField.color = "#708090"
                }
            }
        }
        Rectangle{
            id: color10
            anchors{
                top: color9.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/10
            color: "#4682b4"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    colorPopup.close()
                    colorField.color = "#4682b4"
                }
            }
        }


    }
}
