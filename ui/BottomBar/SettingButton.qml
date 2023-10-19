import QtQuick 2.15
import QtQuick.Controls 2.15


Rectangle{
    color: Qt.darker(app_parameter.colorAppDanPhong, 1.2)
    anchors{
        top: parent.top
        bottom: parent.bottom
        topMargin: parent.height/10
        bottomMargin:  parent.height/10
        margins: parent.height/5
    }
    width: height
    radius: 5
    Image{
        property bool openStatue: false
        anchors.centerIn: parent
        height: parent.height*2/3
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/truck.png"
    }
}
