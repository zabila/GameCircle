import QtQuick 2.0
import QtQuick.Controls 2.2
import circle 1.0

Rectangle {
    visible: true
    width: 720
    height: 1280
    color: "azure"

    Button {
        id: button
        x: 217
        y: 1077
        width: 286
        height: 80
        text: qsTr("Back")

        onClicked: {
            loader.setSource("StartMenu.qml")
        }
    }


    Tumbler {
        id: tumbler
        x: 329
        y: 408
        width: 60
        height: 388
        wrap: true
        wheelEnabled: true
        topPadding: 3
        visibleItemCount: 4
        focusPolicy: Qt.NoFocus
        font.letterSpacing: 5
        padding: 0
        currentIndex: 1
        font.family: "Tahoma"
        spacing: 0
        scale: 2.2
        model: 3
        onCurrentIndexChanged:
        {
            level.level = tumbler.currentIndex;
        }
    }

    Text {
        id: text1
        x: 273
        y: 61
        width: 172
        height: 80
        text: qsTr("Level")
        fontSizeMode: Text.VerticalFit
        renderType: Text.NativeRendering
        font.pixelSize: 70
    }


}
