import QtQuick 2.6
import QtQuick.Window 2.2
import circle 1.0


Window {
    id: main
    visible: true
    width: 720
    height: 1280
    color: "azure"
    title: qsTr("Test")

    Loader {
            id: loader
            source: "StartMenu.qml"
        }

    Circle{
        id: level
        level: 0
    }
}
