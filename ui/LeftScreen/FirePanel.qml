import QtQuick 2.15

Rectangle{
    id: panel
    property alias panelSize: panel.width
    property alias panelNum: numText.text
    height: width ; radius: width/2
    border.width: width/10
    Text{
        id: numText
        anchors.centerIn: parent
        font.pixelSize: 16
    }

}
