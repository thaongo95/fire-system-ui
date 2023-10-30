import QtQuick 2.15

Rectangle {
    id: directionButton
    property alias nameBt: nameOfButton.text
    property alias btSpeed: pressTime.interval
    property alias iconRotate: icon.rotation
    property alias btSize: directionButton.width
    height: width
    color: Qt.lighter(app_parameter.colorAppDanPhong, 1.5)
    Text{
        anchors.centerIn: parent
        id: nameOfButton
        visible: false
    }

    Image{
        id: icon
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/up.png"
        MouseArea{
            id: pressButton
            anchors.fill: parent
        }
        Timer{
            id: pressTime
            //interval: 1/signal_param.moveSpeed_Y*2000
            repeat: true
            triggeredOnStart: true
            running: pressButton.containsMouse
            onTriggered:{
                if (nameBt==="up")
                    signal_param.moveUp()
                else if (nameBt === "down")
                    signal_param.moveDown()
                else if (nameBt === "right")
                    signal_param.moveRight()
                else if (nameBt === "left")
                    signal_param.moveLeft()
            }
        }
    }
}
