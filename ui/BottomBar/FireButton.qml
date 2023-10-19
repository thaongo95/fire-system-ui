import QtQuick 2.15
import QtQuick.Controls 2.15

Image{
    id:fire
    anchors{
        margins: parent.height/3
        verticalCenter: parent.verticalCenter
    }
    height: parent.height/2
    fillMode: Image.PreserveAspectFit
    source: "qrc:/ui/assets/rocket.png"

}
