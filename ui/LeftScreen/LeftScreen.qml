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
    Rectangle{
        id: tankButton
        width: parent.width/6
        height: width
        radius: width/2
        color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
        anchors{
            right: parent.right
            bottom: parent.bottom
            margins: parent.width/20
        }
        visible: true
        Image{
            anchors.centerIn: parent
            width: parent.width*2/3
            height: width
            fillMode: Image.PreserveAspectFit
            source: "qrc:/ui/assets/tank.png"
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{
                tankButton.visible = !tankButton.visible
                cameraModeButton.visible = !cameraModeButton.visible
            }
        }
    }
    Rectangle{
        id: cameraModeButton
        width: parent.width/6
        height: width
        radius: width/2
        color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
        anchors{
            right: parent.right
            bottom: parent.bottom
            margins: parent.width/20
        }
        visible: false
        Image{
            anchors.centerIn: parent
            width: parent.width*2/3
            height: width
            fillMode: Image.PreserveAspectFit
            source: "qrc:/ui/assets/security-camera.png"
        }
        MouseArea{
            anchors.fill: parent
            onClicked:{
                tankButton.visible = !tankButton.visible
                cameraModeButton.visible = !cameraModeButton.visible
            }
        }
    }

}
