import QtQuick 2.15

Rectangle {
    id: lockButton
    color: Qt.lighter(app_parameter.colorAppDanPhong, 1.5)
    property bool logFlag: true
    height: width
    radius: width/2
    Image{
        anchors.centerIn: parent
        height: bigButtonSize/2
        width: bigButtonSize/2
        fillMode: Image.PreserveAspectFit
        source: lockButton.logFlag ? "qrc:/ui/assets/padlock.png" : "qrc:/ui/assets/open-padlock.png"
        MouseArea{
            anchors.fill: parent
            onClicked: {
                if (lockButton.logFlag==true){
                    app_parameter.setlockFlag("unlock")
                }
                else if(lockButton.logFlag==false){
                    app_parameter.setlockFlag("locked")
                }
                lockButton.logFlag = !lockButton.logFlag
            }
        }
    }
}
