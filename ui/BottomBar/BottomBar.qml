import QtQuick 2.15


Rectangle{

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
        visible: tactic.tacticType === "oneshot"
        anchors.right: parent.right


    }
    MultiFireButton{
        id: multiFireButton
        anchors.right: parent.right
        visible: tactic.tacticType === "multishot"

    }
    ResetButton{
        id: resetButton
        anchors{
            right: parent.right
            rightMargin: parent.height *7/5
        }
    }

}
