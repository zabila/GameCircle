import QtQuick 2.6
import QtQuick.Window 2.2
import circle 1.0
import QtQuick.Controls 2.2


Rectangle {
    visible: true
    width: 720
    height: 1280
    color: "azure"

    Button {
        id: button
        x: 217
        y: 474
        width: 286
        height: 80
        text: qsTr("Start")

        onClicked: {
            loader.setSource("Game.qml")
        }

    }

    Button {
        id: button1
        x: 217
        y: 600
        width: 286
        height: 80
        text: qsTr("Setting")
        onClicked: {
            loader.setSource("Settings.qml")
        }

    }

    Button {
        id: button2
        x: 217
        y: 722
        width: 286
        height: 80
        text: qsTr("Exit")
        onClicked: {
            main.close()
        }
    }
}
