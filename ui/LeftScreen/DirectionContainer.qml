import QtQuick 2.15

Rectangle{
    id: directionContainer
    width: parent.width*2/3
    height: width
    radius: width/2
    color: Qt.darker(app_parameter.colorAppDanPhong, 1.5)
    Image{
        id: upButton
        anchors{
            top: parent.top
            margins: parent.width/10
            horizontalCenter: parent.horizontalCenter
        }
        height: parent.height/4
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/up.png"
        MouseArea{
            id: up
            anchors.fill: parent
        }
        Timer{
            interval: 1/signal_param.moveSpeed_Y*2000
            repeat: true
            triggeredOnStart: true
            running: up.containsMouse
            onTriggered: signal_param.moveUp()
        }
    }
    Image{
        id: downButton
        anchors{
            bottom: parent.bottom
            margins: parent.width/10
            horizontalCenter: parent.horizontalCenter
        }
        height: parent.height/4
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/down.png"
        MouseArea{
            id: down
            anchors.fill: parent
        }
        Timer{
            interval: 1/signal_param.moveSpeed_Y*2000
            repeat: true
            triggeredOnStart: true
            running: down.containsMouse
            onTriggered: signal_param.moveDown()
        }
    }
    Image{
        id: rightButton
        anchors{
            right: parent.right
            margins: parent.width/10
            verticalCenter: parent.verticalCenter
        }
        height: parent.height/4
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/right.png"
        MouseArea{
            id: right
            anchors.fill: parent
        }
        Timer{
            interval: 1/signal_param.moveSpeed_X*2000
            repeat: true
            triggeredOnStart: true
            running: right.containsMouse
            onTriggered: signal_param.moveRight()
        }
    }
    Image{
        id: leftButton
        anchors{
            left: parent.left
            margins: parent.width/10
            verticalCenter: parent.verticalCenter
        }
        height: parent.height/4
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/left.png"
        MouseArea{
            id: left
            anchors.fill: parent
        }
        Timer{
            interval: 1/signal_param.moveSpeed_X*2000
            repeat: true
            triggeredOnStart: true
            running: left.containsMouse
            onTriggered: signal_param.moveLeft()
        }
    }
}
