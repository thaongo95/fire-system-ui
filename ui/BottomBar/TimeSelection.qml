import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    width: parent.width/5
    height: width/5
    color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
    property int textSize: app_parameter.textPixelSize
    property alias timeValue: textSelect.text
    Text {
        id:  labelPart
        font.pixelSize: textSize
        text: "Thời gian chờ"
        anchors.centerIn: parent
    }

    Rectangle{
        id: selectField
        anchors{
            left: parent.right
        }
        width: parent.width
        height: parent.height
        color: "white"
        TextInput{
            id: textSelect
            anchors.centerIn: parent
            text: "1"
            font.pixelSize: textSize
        }
    }
}
