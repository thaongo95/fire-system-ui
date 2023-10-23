import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id: appsettingPopup

    property int largeMargin: 5
    property int smallMargin: 2
    property int textSize: app_parameter.textPixelSize

    Rectangle{
        id: headerBarASP  // ASP for AppSettingPopup
        color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
        anchors{
            top: parent.top
            left: parent.left
            right: parent.right
        }
        height: parent.height/15
        Text{
            text: "CÀI ĐẶT PHẦN MỀM"
            anchors.centerIn: parent
            font.pixelSize: textSize + 4
            color: "black"
        }
        Rectangle{
            id: closeButtonASP
            color: "green"
            anchors{
                top: parent.top
                left: parent.left
                bottom: parent.bottom
            }
            Text{
                text: "Đóng"
                color: "black"
                anchors.centerIn: parent
                font.pixelSize: textSize
            }
            width: parent.height * 2
            MouseArea{
                anchors.fill: parent
                onClicked: popupAppSetting.close()
            }
        }
        Rectangle{
            id: loadButtonASP
            color: "green"
            anchors{
                top: parent.top
                right: parent.right
                bottom: parent.bottom
            }
            Text{
                text: "Xác nhận"
                color: "black"
                anchors.centerIn: parent
                font.pixelSize: textSize
            }
            width: parent.height * 3
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    app_parameter.setColorAppDanPhong(colorOptions.colorBG)
                    app_parameter.setTextPixelSize(colorLabelText.fontValue)
                }
            }
        }
    }

    Rectangle{
        id: bodyFrame
        color: Qt.lighter(app_parameter.colorAppDanPhong, 1.5)
        anchors{
            top: headerBarASP.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }

        ColorChoose{
            id: colorOptions
            anchors{
                top: parent.top
                right: parent.horizontalCenter
                margins: largeMargin*3
            }
        }
        FontChoose{
            id: colorLabelText
            anchors{
                top: colorOptions.bottom
                right: parent.horizontalCenter
                margins: largeMargin*3
            }
        }
    }

}
