import QtQuick 2.15
import QtQuick.Controls

Image {
    id: positionBt
    height: width
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
        width: parent.width*8
        height: parent.height*5
        Rectangle{
            anchors.fill: parent
            color: Qt.lighter(app_parameter.colorAppDanPhong, 1.5)
            Rectangle{
                id: input1
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.margins: parent.height/10
                width: parent.width *3/4
                height: parent.height /5
                Rectangle{
                    anchors{
                        left: parent.left
                        top: parent.top
                        bottom: parent.bottom
                    }
                    width: parent.width *3/8
                    color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
                    Text{
                        anchors.centerIn: parent
                        text: "Lat:"
                        font.pixelSize: app_parameter.textPixelSize
                    }
                }
                Rectangle{
                    anchors{
                        right: parent.right
                        top: parent.top
                        bottom: parent.bottom
                    }
                    width: parent.width*5/8
                    TextInput{
                        id: textInput1
                        anchors.centerIn: parent
                        text: map_param.cord_X
                        font.pixelSize: app_parameter.textPixelSize
                        focus: true
                    }
                }
            }

            Rectangle{
                id: input2
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: input1.bottom
                anchors.margins: parent.height/10
                width: parent.width *3/4
                height: parent.height /5
                Rectangle{
                    anchors{
                        left: parent.left
                        top: parent.top
                        bottom: parent.bottom
                    }
                    width: parent.width *3/8
                    color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
                    Text{
                        anchors.centerIn: parent
                        text: "Long:"
                        font.pixelSize: app_parameter.textPixelSize
                    }
                }
                Rectangle{
                    anchors{
                        right: parent.right
                        top: parent.top
                        bottom: parent.bottom
                    }
                    width: parent.width*5/8
                    TextInput{
                        id: textInput2
                        anchors.centerIn: parent
                        text: map_param.cord_Y
                        font.pixelSize: app_parameter.textPixelSize
                        focus: true
                    }
                }

            }


            Rectangle{
                id: textBt
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: input2.bottom
                anchors.margins: parent.height/10
                width: parent.width /3
                height: parent.height /5
                color: Qt.darker(app_parameter.colorAppDanPhong, 1.2)
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        map_param.setCord_X(textInput1.text)
                        map_param.setCord_Y(textInput2.text)
                    }
                }
                Text{
                    text: "ĐI"
                    anchors.centerIn: parent
                }
            }
        }
    }
}
