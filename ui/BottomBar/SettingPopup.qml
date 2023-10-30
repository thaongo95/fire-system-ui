import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id: settingPopup
    property int largeMargin: 5
    property int smallMargin: 2
    property int textSize: app_parameter.textPixelSize
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
            font.pixelSize: textSize+4
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
                text: "Đóng"
                color: "black"
                anchors.centerIn: parent
                font.pixelSize: textSize
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
                text: "Xác nhận"
                color: "black"
                anchors.centerIn: parent
                font.pixelSize: textSize
            }
            width: parent.height * 2
            MouseArea{
                id: comfirm
                anchors.fill: parent
                onClicked: {
                    signal_param.setMoveSpeed_Y(sliderTam.sliderValue)
                    signal_param.setMoveSpeed_X(sliderHuong.sliderValue)
                }
            }
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
                rightMargin: largeMargin
            }
            height: parent.height*2/5
            Text{
                id: tamhuongtittle
                text: "Tầm Hướng"
                anchors{
                    top: parent.top
                    horizontalCenter: parent.horizontalCenter
                    margins: smallMargin
                }
                font.pixelSize: textSize+2
            }
            SliderText{
                id: sliderTam
                nameValue: "V-tầm:"
                sliderValue: signal_param.moveSpeed_Y
                anchors{
                    top: tamhuongtittle.bottom
                    topMargin: height/4
                    horizontalCenter: parent.horizontalCenter
                    margins: smallMargin
                }
            }
            SliderText{
                id: sliderHuong
                nameValue: "V-hướng:"
                sliderValue: signal_param.moveSpeed_X
                anchors{
                    top: sliderTam.bottom
                    topMargin: height/4
                    horizontalCenter: parent.horizontalCenter
                    margins: smallMargin
                }
            }
        }
        Rectangle{
            id: cameraButtonControl
            color: Qt.lighter(app_parameter.colorAppDanPhong, 1.5)
            anchors{
                top: directionButtonControl.bottom
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
                font.pixelSize: textSize+2
            }
            SliderText{
                id: cam_vtam
                nameValue: "V-tầm:"
                sliderValue: signal_param.moveSpeed_Y
                anchors{
                    top: parent.top
                    topMargin: height/2
                    horizontalCenter: parent.horizontalCenter
                    margins: smallMargin
                }
            }
            SliderText{
                id: cam_vhuong
                nameValue: "V-hướng:"
                sliderValue: signal_param.moveSpeed_X
                anchors{
                    top: cam_vtam.bottom
                    topMargin: height/4
                    horizontalCenter: parent.horizontalCenter
                    margins: smallMargin
                }
            }
            SliderText{
                id: cam_zoom
                nameValue: "Zoom:"
                anchors{
                    top: cam_vhuong.bottom
                    topMargin: height/4
                    horizontalCenter: parent.horizontalCenter
                    margins: smallMargin
                }
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
                font.pixelSize: textSize+2
            }
        }
    }

}
