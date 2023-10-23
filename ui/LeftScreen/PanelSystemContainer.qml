import QtQuick 2.15

Rectangle{
    id: panelSystem
    color: "#fffff0"
    border.width: 3
    border.color: "red"
    width: parent.width * 2/3
    height: width * 4/5
    property int sizeOfPanel: (width-8)/5 - spaces
    property int spaces: 2
    property variant panelArray: [panel_1, panel_2, panel_3, panel_4, panel_5,
                                panel_6, panel_7, panel_8, panel_9, panel_10,
                                panel_11, panel_12, panel_13, panel_14, panel_15,
                                panel_16, panel_17, panel_18, panel_19, panel_20]

    Column{
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        spacing: spaces
        Row{
            spacing: spaces
            FirePanel{
                id: ong1
                panelNum: "1"
                panelSize: sizeOfPanel
                color: (panel_1.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_1.panelStatue==="Ready") ? Qt.lighter(ong1.color, 1.5) : ong1.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_1.panelStatue==="Ready"){
                            panel_1.setPanelStatue("Waiting")
                        }
                        else panel_1.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong2
                panelNum: "2"
                panelSize: sizeOfPanel
                color: (panel_2.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_2.panelStatue==="Ready") ? Qt.lighter(ong2.color, 1.5) : ong2.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_2.panelStatue==="Ready"){
                            panel_2.setPanelStatue("Waiting")
                        }
                        else panel_2.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong3
                panelNum: "3"
                panelSize: sizeOfPanel
                color: (panel_3.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_3.panelStatue==="Ready") ? Qt.lighter(ong3.color, 1.5) : ong3.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_3.panelStatue==="Ready"){
                            panel_3.setPanelStatue("Waiting")
                        }
                        else panel_3.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong4
                panelNum: "4"
                panelSize: sizeOfPanel
                color: (panel_4.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_4.panelStatue==="Ready") ? Qt.lighter(ong4.color, 1.5) : ong4.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_4.panelStatue==="Ready"){
                            panel_4.setPanelStatue("Waiting")
                        }
                        else panel_4.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong5
                panelNum: "5"
                panelSize: sizeOfPanel
                color: (panel_5.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_5.panelStatue==="Ready") ? Qt.lighter(ong5.color, 1.5) : ong5.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_5.panelStatue==="Ready"){
                            panel_5.setPanelStatue("Waiting")
                        }
                        else panel_5.setPanelStatue("Ready")
                    }
                }
            }
        }
        Row{
            spacing: spaces
            FirePanel{
                id: ong6
                panelNum: "6"
                panelSize: sizeOfPanel
                color: (panel_6.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_6.panelStatue==="Ready") ? Qt.lighter(ong6.color, 1.5) : ong6.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_6.panelStatue==="Ready"){
                            panel_6.setPanelStatue("Waiting")
                        }
                        else panel_6.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong7
                panelNum: "7"
                panelSize: sizeOfPanel
                color: (panel_7.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_7.panelStatue==="Ready") ? Qt.lighter(ong7.color, 1.5) : ong7.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_7.panelStatue==="Ready"){
                            panel_7.setPanelStatue("Waiting")
                        }
                        else panel_7.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong8
                panelNum: "8"
                panelSize: sizeOfPanel
                color: (panel_8.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_8.panelStatue==="Ready") ? Qt.lighter(ong8.color, 1.5) : ong8.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_8.panelStatue==="Ready"){
                            panel_8.setPanelStatue("Waiting")
                        }
                        else panel_8.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong9
                panelNum: "9"
                panelSize: sizeOfPanel
                color: (panel_9.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_9.panelStatue==="Ready") ? Qt.lighter(ong9.color, 1.5) : ong9.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_9.panelStatue==="Ready"){
                            panel_9.setPanelStatue("Waiting")
                        }
                        else panel_9.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong10
                panelNum: "10"
                panelSize: sizeOfPanel
                color: (panel_10.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_10.panelStatue==="Ready") ? Qt.lighter(ong10.color, 1.5) : ong10.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_10.panelStatue==="Ready"){
                            panel_10.setPanelStatue("Waiting")
                        }
                        else panel_10.setPanelStatue("Ready")
                    }
                }
            }
        }
        Row{
            spacing: spaces
            FirePanel{
                id: ong11
                panelNum: "11"
                panelSize: sizeOfPanel
                color: (panel_11.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_11.panelStatue==="Ready") ? Qt.lighter(ong11.color, 1.5) : ong11.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_11.panelStatue==="Ready"){
                            panel_11.setPanelStatue("Waiting")
                        }
                        else panel_11.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong12
                panelNum: "12"
                panelSize: sizeOfPanel
                color: (panel_12.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_12.panelStatue==="Ready") ? Qt.lighter(ong12.color, 1.5) : ong12.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_12.panelStatue==="Ready"){
                            panel_12.setPanelStatue("Waiting")
                        }
                        else panel_12.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong13
                panelNum: "13"
                panelSize: sizeOfPanel
                color: (panel_13.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_13.panelStatue==="Ready") ? Qt.lighter(ong13.color, 1.5) : ong13.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_13.panelStatue==="Ready"){
                            panel_13.setPanelStatue("Waiting")
                        }
                        else panel_13.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong14
                panelNum: "14"
                panelSize: sizeOfPanel
                color: (panel_14.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_14.panelStatue==="Ready") ? Qt.lighter(ong14.color, 1.5) : ong14.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_14.panelStatue==="Ready"){
                            panel_14.setPanelStatue("Waiting")
                        }
                        else panel_14.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong15
                panelNum: "15"
                panelSize: sizeOfPanel
                color: (panel_15.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_15.panelStatue==="Ready") ? Qt.lighter(ong15.color, 1.5) : ong15.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_15.panelStatue==="Ready"){
                            panel_15.setPanelStatue("Waiting")
                        }
                        else panel_15.setPanelStatue("Ready")
                    }
                }
            }
        }
        Row{
            spacing: spaces
            FirePanel{
                id: ong16
                panelNum: "16"
                panelSize: sizeOfPanel
                color: (panel_16.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_16.panelStatue==="Ready") ? Qt.lighter(ong16.color, 1.5) : ong16.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_16.panelStatue==="Ready"){
                            panel_16.setPanelStatue("Waiting")
                        }
                        else panel_16.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong17
                panelNum: "17"
                panelSize: sizeOfPanel
                color: (panel_17.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_17.panelStatue==="Ready") ? Qt.lighter(ong17.color, 1.5) : ong17.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_17.panelStatue==="Ready"){
                            panel_17.setPanelStatue("Waiting")
                        }
                        else panel_17.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong18
                panelNum: "18"
                panelSize: sizeOfPanel
                color: (panel_18.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_18.panelStatue==="Ready") ? Qt.lighter(ong18.color, 1.5) : ong18.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_18.panelStatue==="Ready"){
                            panel_18.setPanelStatue("Waiting")
                        }
                        else panel_18.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong19
                panelNum: "19"
                panelSize: sizeOfPanel
                color: (panel_19.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_19.panelStatue==="Ready") ? Qt.lighter(ong19.color, 1.5) : ong19.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_19.panelStatue==="Ready"){
                            panel_19.setPanelStatue("Waiting")
                        }
                        else panel_19.setPanelStatue("Ready")
                    }
                }
            }
            FirePanel{
                id: ong20
                panelNum: "20"
                panelSize: sizeOfPanel
                color: (panel_20.panelStatue==="Fired") ? "red" : "green"
                border.color: (panel_20.panelStatue==="Ready") ? Qt.lighter(ong20.color, 1.5) : ong20.color
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (panel_20.panelStatue==="Ready"){
                            panel_20.setPanelStatue("Waiting")
                        }
                        else panel_20.setPanelStatue("Ready")
                    }
                }
            }
        }
    }
}



