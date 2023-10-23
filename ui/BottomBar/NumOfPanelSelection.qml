import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    width: parent.width/5
    height: width/5
    color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
    property int textSize: app_parameter.textPixelSize
    Text {
        id:  labelPart
        font.pixelSize: textSize
        text: "Chọn số đạn phóng"
        anchors.centerIn: parent
    }

    Rectangle{
        id: selectField
        anchors{
            left: parent.right
        }
        width: parent.width
        height: parent.height
        color: "white"
        Text{
            id: textSelect
            anchors.centerIn: parent
            text: "1"
            font.pixelSize: textSize
        }
        MouseArea{
            anchors.fill: parent
            onClicked: selectPopup.open()
        }
    }

    Popup{
        id: selectPopup
        x: parent.width
        y: -parent.height*10
        width: parent.width
        height: parent.height*20
        Rectangle{
            id: num1
            anchors{
                top: parent.top
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "1"
                font.pixelSize: textSize
            }

            MouseArea{
                anchors.fill: parent
                onClicked:{
                    selectPopup.close()
                    textSelect.text = "1"
                }
            }
        }
        Rectangle{
            id: num2
            anchors{
                top: num1.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "2"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "2"
                }
            }
        }
        Rectangle{
            id: num3
            anchors{
                top: num2.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "3"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "3"
                }
            }
        }
        Rectangle{
            id: num4
            anchors{
                top: num3.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "4"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "4"
                }
            }
        }
        Rectangle{
            id: num5
            anchors{
                top: num4.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "5"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "5"
                }
            }
        }
        Rectangle{
            id: num6
            anchors{
                top: num5.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "6"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "6"
                }
            }
        }
        Rectangle{
            id: num7
            anchors{
                top: num6.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "7"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "7"
                }
            }
        }
        Rectangle{
            id: num8
            anchors{
                top: num7.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "8"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "8"
                }
            }
        }
        Rectangle{
            id: num9
            anchors{
                top: num8.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "9"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "9"
                }
            }
        }
        Rectangle{
            id: num10
            anchors{
                top: num9.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "10"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "10"
                }
            }
        }
        Rectangle{
            id: num11
            anchors{
                top: num10.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "11"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "11"
                }
            }
        }
        Rectangle{
            id: num12
            anchors{
                top: num11.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "12"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "12"
                }
            }
        }
        Rectangle{
            id: num13
            anchors{
                top: num12.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "13"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "13"
                }
            }
        }
        Rectangle{
            id: num14
            anchors{
                top: num13.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "14"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "14"
                }
            }
        }
        Rectangle{
            id: num15
            anchors{
                top: num14.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "15"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "15"
                }
            }
        }
        Rectangle{
            id: num16
            anchors{
                top: num15.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "16"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "16"
                }
            }
        }
        Rectangle{
            id: num17
            anchors{
                top: num16.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "17"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "17"
                }
            }
        }
        Rectangle{
            id: num18
            anchors{
                top: num17.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "18"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "18"
                }
            }
        }
        Rectangle{
            id: num19
            anchors{
                top: num18.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "19"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "19"
                }
            }
        }
        Rectangle{
            id: num20
            anchors{
                top: num19.bottom
                left: parent.left
                right: parent.right
            }
            height: parent.height/20
            color: "white"
            Text{
                anchors.centerIn: parent
                text: "20"
                font.pixelSize: textSize
            }
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    selectPopup.close()
                    textSelect.text = "20"
                }
            }
        }
    }
}
