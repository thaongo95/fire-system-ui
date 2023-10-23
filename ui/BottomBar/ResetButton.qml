import QtQuick 2.15
import QtQuick.Controls 2.15



Rectangle{
    id: fire
    color: Qt.darker(app_parameter.colorAppDanPhong, 1.2)
    property variant panelArray: [panel_1, panel_2, panel_3, panel_4, panel_5,
                                panel_6, panel_7, panel_8, panel_9, panel_10,
                                panel_11, panel_12, panel_13, panel_14, panel_15,
                                panel_16, panel_17, panel_18, panel_19, panel_20]

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
        anchors.centerIn: parent
        height: parent.height*2/3
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/reset.png"
    }
    MouseArea{
        anchors.fill: parent
        onClicked:{
            for (var i=0; i< 20; i++) panelArray[i].setPanelStatue("Waiting")
        }
    }
}
