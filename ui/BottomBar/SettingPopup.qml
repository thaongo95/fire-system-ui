import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id: settingPopup
    property int largeMargin: 5
    property int smallMargin: 2
    Rectangle{
        id: headerBarSP
        color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
        anchors{
            top: parent.top
            left: parent.left
            right: parent.right
        }
        height: parent.height/15
        Text{
            text: "CÀI ĐẶT THÔNG SỐ DÀN PHÓNG"
            anchors.centerIn: parent
            font.pixelSize: 16
            color: "black"
        }
        Rectangle{
            id: closeButtonSP
            color: "green"
            anchors{
                top: parent.top
                left: parent.left
                bottom: parent.bottom
                bottomMargin: smallMargin
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
                onClicked: popupSetting.close()
            }
        }
        Rectangle{
            id: loadButtonSP
            color: "green"
            anchors{
                top: parent.top
                right: parent.right
                bottom: parent.bottom
                bottomMargin: smallMargin
            }
            Text{
                text: "Load"
                color: "black"
                anchors.centerIn: parent
                font.pixelSize: 12
            }
            width: parent.height * 2
        }
    }

    Rectangle{
        id: bodyFrameSP
        color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
        anchors{
            top: headerBarSP.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        Rectangle{
            id: directionButtonControl
            color: Qt.lighter(app_parameter.colorAppDanPhong, 1.5)
            anchors{
                top: parent.top
                left: parent.left
                right: parent.horizontalCenter
                bottom: parent.verticalCenter
                rightMargin: largeMargin
                bottomMargin: largeMargin
            }
            Text{
                id: tamhuongtittle
                text: "Tầm Hướng"
                anchors{
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                    margins: smallMargin
                }
                font.pixelSize: 14
            }
            SliderText{
                id: sliderTam
                nameValue: "V-tầm:"
                anchors{
                    top: tamhuongtittle.bottom
                    horizontalCenter: parent.horizontalCenter
                    margins: smallMargin
                }
            }
            SliderText{
                id: sliderHuong
                nameValue: "V-hướng:"
                anchors{
                    top: sliderTam.bottom
                    topMargin: 5
                    horizontalCenter: parent.horizontalCenter
                    margins: smallMargin
                }
            }
        }
        Rectangle{
            id: cameraButtonControl
            color: Qt.lighter(app_parameter.colorAppDanPhong, 1.5)
            anchors{
                top: parent.verticalCenter
                left: parent.left
                right: parent.horizontalCenter
                bottom: parent.bottom
                topMargin: largeMargin
                rightMargin: largeMargin
            }
            Text{
                text: "Camera"
                anchors{
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                    margins: smallMargin
                }
                font.pixelSize: 14
            }

        }
        Rectangle{
            id: angleButtonControl
            color: Qt.lighter(app_parameter.colorAppDanPhong, 1.5)
            anchors{
                top: parent.top
                left: parent.horizontalCenter
                right: parent.right
                bottom: parent.bottom
                leftMargin: largeMargin
            }
            width: parent.width/3

            Text{
                text: "Thông Số Chung"
                anchors{
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                    margins: smallMargin
                }
                font.pixelSize: 14
            }
        }
    }

}
