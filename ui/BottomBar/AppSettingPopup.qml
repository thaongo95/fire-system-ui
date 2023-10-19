import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id: appsettingPopup
    property int largeMargin: 5
    property int smallMargin: 2
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
            font.pixelSize: 16
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
                text: "Close"
                color: "black"
                anchors.centerIn: parent
                font.pixelSize: 12
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
                text: "Confirm"
                color: "black"
                anchors.centerIn: parent
                font.pixelSize: 12
            }
            width: parent.height * 3
            MouseArea{
                anchors.fill: parent
                onClicked: colorLabelText.labelRight = colorLabelText.textValue
            }
        }
    }

    Rectangle{
        id: bodyFrame
        color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
        anchors{
            top: headerBarASP.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        LabelText{
            id: colorLabelText
            anchors.centerIn: parent
        }
        ColorChoose{
            id: colorOptions
            anchors{
                top: parent.top
                left: parent.left
                margins: 50
            }
        }
    }

}
