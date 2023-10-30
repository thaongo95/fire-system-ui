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
        anchors{
            bottom: parent.bottom
            margins: parent.width/8
            horizontalCenter: parent.horizontalCenter
        }
    }
    PanelSystemContainer{
        id: panelSystemContainer
        anchors{
            top: parent.top
            topMargin: parent.width/8
            horizontalCenter: parent.horizontalCenter
        }
    }
    ControlObject{
        id: objectCtrlBt
        anchors{
            right: parent.right
            bottom: parent.bottom
            margins: parent.width/20
        }
        width: parent.width/6
        height: width
        radius: width/2
    }

}
