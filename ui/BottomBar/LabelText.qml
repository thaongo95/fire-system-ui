import QtQuick 2.15

Rectangle{
    width: 100
    height: 30
    property alias labelRight: labelPart.text
    property alias textValue: textInputPart.text
    Rectangle{
        color: Qt.darker(app_parameter.colorAppDanPhong, 1.2)
        anchors{
            top: parent.top
            bottom: parent.bottom
            left: parent.left
            right: parent.horizontalCenter
        }
        Text {
            id:  labelPart
            font.pixelSize: 14
        }

    }
    Rectangle{
        anchors{
            top: parent.top
            bottom: parent.bottom
            right: parent.right
            left: parent.horizontalCenter
        }
        TextInput{
            id: textInputPart
            anchors{
                verticalCenter: parent.verticalCenter
                right: parent.right
                left: parent.left
            }
            clip: true
        }
    }
}
