import QtQuick 2.15


Rectangle{
    property variant panelArray: [panel_1, panel_2, panel_3, panel_4, panel_5,
                                panel_6, panel_7, panel_8, panel_9, panel_10,
                                panel_11, panel_12, panel_13, panel_14, panel_15,
                                panel_16, panel_17, panel_18, panel_19, panel_20]
    id: bottomBar
    color: app_parameter.colorAppDanPhong
    AppSettingButton{
        id: appsettingButton
        anchors.left: parent.left
        MouseArea{
            anchors.fill: parent
            onClicked: popupAppSetting.open()
        }
    }
    PopupFromBar{
        id: popupAppSetting
        AppSettingPopup{
            id: appsettingPopup
            anchors.fill: parent
        }
    }
    SettingButton{
        id:settingButton
        anchors.left: appsettingButton.right
        MouseArea{
            anchors.fill: parent
            onClicked: popupSetting.open()
        }
    }
    PopupFromBar{
        id: popupSetting
        SettingPopup{
            id: settingPopup
            anchors.fill: parent
        }
    }
    SetGoalButton{
        id: setgoalButton
        anchors.left: settingButton.right
        MouseArea{
            anchors.fill: parent
            onClicked: popupSetGoal.open()
        }
    }
    PopupFromBar{
        id: popupSetGoal
        SetGoalPopup{
            id: setgoalPopup
            anchors.fill: parent
        }
    }
    FireButton{
        id: fireButton
        anchors.right: parent.right
        MouseArea{
            anchors.fill: parent
            onClicked: {
                for (var i=0; i<20; i++){
                    if (panelArray[i].panelStatue==="Ready"){
                        panelArray[i].setPanelStatue("Fired")
                    }
                }
            }
        }
    }
}
