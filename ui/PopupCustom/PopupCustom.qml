import QtQuick 2.15
import QtQuick.Controls 2.15

Popup{
    id: settingPopUp
    background: Rectangle{
        color: "blue"
        anchors.fill: parent
    }

    modal: true
    focus: true
    closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent
}
