import QtQuick 2.15

Rectangle {
    id: modelCtrlButton
    color: Qt.lighter(app_parameter.colorAppDanPhong, 1.2)
    Image{
        anchors.centerIn: parent
        width: parent.width*2/3
        height: width
        fillMode: Image.PreserveAspectFit
        source: (signal_param.controlMode==="tank") ? "qrc:/ui/assets/tank.png"
                                                    : "qrc:/ui/assets/security-camera.png"
    }
    MouseArea{
        anchors.fill: parent
        onClicked:{
            if(signal_param.controlMode==="tank")
                signal_param.setControlMode("camera")
            else
                signal_param.setControlMode("tank")
        }
    }
}
