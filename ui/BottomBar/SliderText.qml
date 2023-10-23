import QtQuick 2.15
import QtQuick.Controls

Rectangle{
    width: parent.width * 5/6
    height: width/5
    property alias nameValue: name.text
    property int textSize: app_parameter.textPixelSize
    Slider{
        id: slider
        anchors{
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }
        width: parent.width * 4/6
        height: parent.height * 2/3
        from: 1
        to:100
        value: parseInt(50)
    }
    Rectangle{
        anchors{
            right: slider.left
            verticalCenter: slider.verticalCenter
            rightMargin: 2
        }
        width: parent.width * 1/5
        height: parent.height * 3/4
        Text{
            id: name
            anchors.centerIn: parent
            font.pixelSize: textSize
        }
    }
    Rectangle{
        color: "#f0fff0"
        anchors{
            left: slider.right
            verticalCenter: parent.verticalCenter
            leftMargin: 2
        }
        width: parent.width * 1/6
        height: parent.height * 3/4
        TextInput{
            anchors.centerIn: parent
            text: parseInt(slider.value)
            font.pixelSize: textSize
        }
    }


}
