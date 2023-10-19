import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    width: 150
    height: 30
    color: Qt.darker(app_parameter.colorAppDanPhong, 1.2)
    Text {
        id:  labelPart
        font.pixelSize: 14
        text: "Chọn màu nền"
        anchors.centerIn: parent
    }
    MouseArea{
        anchors.fill: parent
        onClicked: colorPopup.open()
    }
    Popup{
        id: colorPopup
        x: parent.width *3/2
        y: -parent.height*5
        width: parent.width/2
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
                    app_parameter.setColorAppDanPhong("#483d8b")
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
                    app_parameter.setColorAppDanPhong("#66cdaa")
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
                    app_parameter.setColorAppDanPhong("#9370db")
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
                    app_parameter.setColorAppDanPhong("#ba55d3")
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
                    app_parameter.setColorAppDanPhong("#7b68ee")
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
                    app_parameter.setColorAppDanPhong("#c71585")
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
                    app_parameter.setColorAppDanPhong("#b0e0e6")
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
                    app_parameter.setColorAppDanPhong("#cd853f")
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
                    app_parameter.setColorAppDanPhong("#708090")
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
                    app_parameter.setColorAppDanPhong("#4682b4")
                }
            }
        }


    }
}
