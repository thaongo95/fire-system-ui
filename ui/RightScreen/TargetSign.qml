import QtQuick 2.15

Item {
    id: targetSign
    property real x_value: signal_param.target_X
    property real y_value: signal_param.target_Y
    x: x_value
    y: y_value
    Image{
        anchors.fill: parent
        fillMode: Image.PreserveAspectFit
        source: "qrc:/ui/assets/aim.png"

    }
}
