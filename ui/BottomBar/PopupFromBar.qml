import QtQuick 2.15
import QtQuick.Controls 2.15

Popup{
    id: settingPopUp
    x: 0
    y: - parent.height*7
    width: parent.width*2/3
    height: parent.height*7

    background: Rectangle{
        color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
        anchors.fill: parent
    }

    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent


}
