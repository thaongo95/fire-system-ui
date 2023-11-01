import QtQuick 2.15

Rectangle {
    id: centerButton
    height: width
    radius: width/2
    Image{
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/center.png"
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            signal_param.setTarget_X(mapBox.width/2 - targetSign.width/2)
            signal_param.setTarget_Y(mapBox.height/2 - targetSign.width/2)
            targetSign.visible = !targetSign.visible
        }
    }
}
