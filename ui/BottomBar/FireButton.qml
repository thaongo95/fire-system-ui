import QtQuick 2.15
import QtQuick.Controls 2.15

// this fire button is in developing procession, its take time to figure out
// an solution to deal this button function


Rectangle{
    id: fire
    color: (app_parameter.lockFlag==="unlock") ?
               "red" :
               Qt.darker(app_parameter.colorAppDanPhong, 1.2)
    property variant panelArrayA: [panel_1, panel_2, panel_3, panel_4, panel_5,
                                panel_6, panel_7, panel_8, panel_9, panel_10,
                                panel_11, panel_12, panel_13, panel_14, panel_15,
                                panel_16, panel_17, panel_18, panel_19, panel_20]
    property variant panelArrayB: [panel_5, panel_4, panel_3, panel_2, panel_1,
                                panel_10, panel_9, panel_8, panel_7, panel_6,
                                panel_15, panel_14, panel_13, panel_12, panel_11,
                                panel_20, panel_19, panel_18, panel_17, panel_16]
    property variant panelArrayC: [panel_16, panel_17, panel_18, panel_19, panel_20,
                                panel_11, panel_12, panel_13, panel_14, panel_15,
                                panel_6, panel_7, panel_8, panel_9, panel_10,
                                panel_1, panel_2, panel_3, panel_4, panel_5]
    property variant panelArrayD: [panel_20, panel_19, panel_18, panel_17, panel_16,
                                panel_15, panel_14, panel_13, panel_12, panel_11,
                                panel_10, panel_9, panel_8, panel_7, panel_6,
                                panel_5, panel_4, panel_3, panel_2, panel_1]
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
        source: "qrc:/ui/assets/rocket.png"
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            if ((tactic.fireType==="A")&&(app_parameter.lockFlag==="unlock")){
                for (var i=0; i<20; i++){
                    if (panelArrayA[i].panelStatue==="Ready"){
                        panelArrayA[i].setPanelStatue("Fired")
                        break
                    }
                }
            }
            if ((tactic.fireType==="B")&&(app_parameter.lockFlag==="unlock")){
                for (var i=0; i<20; i++){
                    if (panelArrayB[i].panelStatue==="Ready"){
                        panelArrayB[i].setPanelStatue("Fired")
                        break
                    }
                }
            }
            if ((tactic.fireType==="C")&&(app_parameter.lockFlag==="unlock")){
                for (var i=0; i<20; i++){
                    if (panelArrayC[i].panelStatue==="Ready"){
                        panelArrayC[i].setPanelStatue("Fired")
                        break
                    }
                }
            }
            if ((tactic.fireType==="D")&&(app_parameter.lockFlag==="unlock")){
                for (var i=0; i<20; i++){
                    if (panelArrayD[i].panelStatue==="Ready"){
                        panelArrayD[i].setPanelStatue("Fired")
                        break
                    }
                }
            }
            if ((tactic.fireType==="E")&&(app_parameter.lockFlag==="unlock")){
                for (var i=0; i<20; i++){
                    if (panelArrayA[i].panelStatue==="Ready"){
                        panelArrayA[i].setPanelStatue("Fired")
                        break
                    }
                }
            }
        }
    }
}
