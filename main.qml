import QtQuick 2.15
import QtQuick.Window 2.15

import "ui/RightScreen"
import "ui/LeftScreen"
import "ui/BottomBar"


Window {
    width: 1360
    height: 768
    visible: true
    title: qsTr("DAN PHONG Z113")

    RightScreen{
        id: camBox
//        visible: false
    }
    LeftScreen{
        id: leftScreen
    }
    BottomBar{
        id: bottomBar
        anchors{
            left: leftScreen.right
            right: parent.right
            top: camBox.bottom
            bottom: parent.bottom
        }
    }
}
