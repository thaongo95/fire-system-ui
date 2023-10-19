import QtQuick 2.15


Rectangle {
    id: leftScreen
    anchors{
        left: parent.left
        top: parent.top
        bottom: parent.bottom
    }
    width: parent.width * 0.2
    color: Qt.lighter(app_parameter.colorAppDanPhong, 1.5)
    DirectionContainer{
        id: directionContainer

    }
    PanelSystemContainer{
        id: panelSystemContainer
        anchors{
            top: parent.top
            topMargin: parent.width/6
            horizontalCenter: parent.horizontalCenter
        }
    }
}
