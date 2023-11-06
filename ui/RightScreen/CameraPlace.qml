import QtQuick 2.15
import QtMultimedia
import QtQuick.Controls

Rectangle {

    CaptureSession {
        camera: Camera {
            id: camera
            focusMode: Camera.FocusModeAutoNear
            customFocusPoint: Qt.point(0.2, 0.2) // Focus relative to top-left corner
        }
        videoOutput: videoOutput
    }

    VideoOutput {
        id: videoOutput
        anchors.fill: parent
    }

}
