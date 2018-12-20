import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Video Data Extraction")

    SwipeView {
        id: swipeView
        anchors.fill: parent

        CaptureForm {
            captureButton.onPressedChanged: {
                console.log("Snimaj!")
            }
        }

        LibraryForm {
        }
    }
}
