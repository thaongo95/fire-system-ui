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
    }
}
