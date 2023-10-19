import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id: setgoalPopup
    property int largeMargin: 5
    property int smallMargin: 2
    Rectangle{
        id: headerBarSGP  // SGP for SetGoalPopup
        color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
        anchors{
            top: parent.top
            left: parent.left
            right: parent.right
        }
        height: parent.height/15
        Text{
            text: "BẢNG CHIẾN THUẬT"
            anchors.centerIn: parent
            font.pixelSize: 16
            color: "black"
        }
        Rectangle{
            id: closeButtonSGP
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
                onClicked: popupSetGoal.close()
            }
        }
        Rectangle{
            id: loadButtonSGP
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
        }
    }

    Rectangle{
        id: bodyFrame
        color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
        anchors{
            top: headerBarSGP.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        Rectangle{
            id: oneshotFire
        }
    }

}
