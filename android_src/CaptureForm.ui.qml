import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Extras 1.4
import QtMultimedia 5.6

Page {
    id: page
    width: 600
    height: 400
    property alias captureButton: captureButton

    Item {
        anchors.fill: parent

        VideoOutput {
            anchors.fill: parent
            source: camera
        }

        Camera {
            id: camera
        }
    }

    DelayButton {
        id: captureButton
        width: 58
        height: 58
        text: qsTr("")
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20

        Image {
            id: capture
            x: 212
            y: -21
            width: 48
            height: 48
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            fillMode: Image.PreserveAspectFit
            source: "capture.png"
        }
    }
}
