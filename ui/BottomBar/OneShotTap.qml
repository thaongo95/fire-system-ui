import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Rectangle {
    id: bandon
    property int textSize:  app_parameter.textPixelSize
    property alias options_1: option1.checked
    property alias options_2: option2.checked
    property alias options_3: option3.checked
    property alias options_4: option4.checked
    property alias options_5: option5.checked

    ColumnLayout{
        RadioButton{
            id: option1
            text: qsTr("Bắn từ trái sang, từ trên xuống")
            font.pixelSize: textSize
        }
        RadioButton{
            id: option2
            text: qsTr("Bắn từ phải sang, từ trên xuống")
            font.pixelSize: textSize
        }
        RadioButton{
            id: option3
            text: qsTr("Bắn từ trái sang, từ dưới lên")
            font.pixelSize: textSize
        }
        RadioButton{
            id: option4
            text: qsTr("Bắn từ phải sang, từ dưới lên")
            font.pixelSize: textSize
        }
        RadioButton{
            id: option5
            text: qsTr("Bắn chỉ định")
            font.pixelSize: textSize
        }
    }
}
