import QtQuick 2.15
import QtQuick.Controls 2.15

Rectangle{
    id: setgoalPopup
    property int largeMargin: 5
    property int smallMargin: 2
    property int textSize: app_parameter.textPixelSize
    property variant panelArray: [panel_1, panel_2, panel_3, panel_4, panel_5,
                                panel_6, panel_7, panel_8, panel_9, panel_10,
                                panel_11, panel_12, panel_13, panel_14, panel_15,
                                panel_16, panel_17, panel_18, panel_19, panel_20]
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
            font.pixelSize: textSize+4
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
                text: "Đóng"
                color: "black"
                anchors.centerIn: parent
                font.pixelSize: textSize
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
                text: "Xác nhận"
                color: "black"
                anchors.centerIn: parent
                font.pixelSize: textSize
            }
            width: parent.height * 3
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    if (tacticSelect.tacticSelected==="Bắn đơn"){
                        tactic.setTacticType("oneshot")
                        if (oneShotTap.options_1) {
                            for (var i=0; i<20; i++) panelArray[i].setPanelStatue("Ready")
                            tactic.setFireType("A")
                        }
                        if (oneShotTap.options_2) {
                            for (var i=0; i<20; i++) panelArray[i].setPanelStatue("Ready")
                            tactic.setFireType("B")
                        }
                        if (oneShotTap.options_3) {
                            for (var i=0; i<20; i++) panelArray[i].setPanelStatue("Ready")
                            tactic.setFireType("C")
                        }
                        if (oneShotTap.options_4) {
                            for (var i=0; i<20; i++) panelArray[i].setPanelStatue("Ready")
                            tactic.setFireType("D")
                        }
                        if (oneShotTap.options_5) {
                            panelArray[parseInt(panelSelect.numvalue)-1].setPanelStatue("Ready")
                            tactic.setFireType("E")
                        }
                    }
                    if (tacticSelect.tacticSelected==="Bắn liên thanh"){
                        tactic.setTacticType("multishot")
                        if (multiShotTap.options_1) {
                            for (var i=0; i<20; i++) panelArray[i].setPanelStatue("Ready")
                            tactic.setFireType("A")
                        }
                        if (multiShotTap.options_2){
                            for (var i=0; i<20; i++) panelArray[i].setPanelStatue("Ready")
                            tactic.setFireType("B")
                        }
                        if (multiShotTap.options_3) {
                            for (var i=0; i<20; i++) panelArray[i].setPanelStatue("Ready")
                            tactic.setFireType("C")
                        }
                        if (multiShotTap.options_4) {
                            for (var i=0; i<20; i++) panelArray[i].setPanelStatue("Ready")
                            tactic.setFireType("D")
                        }
                        tactic.setTimeBetweenTwoShot(parseInt(timeSelection.timeValue))
                    }
                }
            }
        }
    }

    Rectangle{
        id: bodyFrame
        color: Qt.lighter(app_parameter.colorAppDanPhong, 1.5)
        anchors{
            top: headerBarSGP.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }
        TacTicSelect{
            id: tacticSelect
            anchors{
                right: parent.horizontalCenter
                top: parent.top
                topMargin: largeMargin*3
            }
        }
        OneShotTap{
            id: oneShotTap
            visible: tacticSelect.tacticSelected==="Bắn đơn"
            height: parent.height/3
            anchors{
                top: tacticSelect.bottom
                horizontalCenter: parent.horizontalCenter
                margins: largeMargin*3
            }
        }
        PanelSelection{
            id: panelSelect
            visible: tacticSelect.tacticSelected==="Bắn đơn" & oneShotTap.options_5
            anchors{
                top: oneShotTap.bottom
                right: parent.horizontalCenter
                topMargin: largeMargin*3
            }
        }
        MultiShotTap{
            id: multiShotTap
            visible: tacticSelect.tacticSelected==="Bắn liên thanh"
            height: parent.height/3
            anchors{
                top: tacticSelect.bottom
                horizontalCenter: parent.horizontalCenter
                margins: largeMargin*3
            }
        }
        NumOfPanelSelection{
            id: numOfPanel
            visible: tacticSelect.tacticSelected==="Bắn liên thanh"
            anchors{
                top: multiShotTap.bottom
                right: parent.horizontalCenter
                topMargin: largeMargin*3
            }
        }
        TimeSelection{
            id: timeSelection
            visible: tacticSelect.tacticSelected === "Bắn liên thanh"
            anchors{
                top: numOfPanel.bottom
                right: parent.horizontalCenter
                topMargin: largeMargin*3
            }
        }
    }


}
