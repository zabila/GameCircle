import QtQuick 2.6
import QtQuick.Window 2.2
import circle 1.0


import "levels.js" as Idlevels
import QtQuick.Controls 2.2

Rectangle {
    visible: true
    width: 720
    height: 1280
    color: "azure"

    property double account: 0
    property double counts: 0

    Item {
        anchors.fill: parent
        MouseArea{
            anchors.fill: parent
            onClicked: {
                account = 0
            }
        }
    }



    Text {
        id: countsItem
        x: 14
        y: 13
        font.family: "Helvetica"
        font.pointSize: 24
        color: "black"
        text: "Touch: " + counts
    }

    Text {
        id: levelItem
        x: 547
        y: 13
        font.family: "Helvetica"
        font.pointSize: 24
        color: "black"
        text: "Level: " + level.level
    }


    Text {
        id: totalaccount
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        font.family: "Helvetica"
        font.pointSize: 86
        color: "black"
        text: account
        opacity: 0.4
    }

    ListView {
        id: listView
        width: parent.width
        height: 1280
        interactive: false


        delegate:
            Rectangle {
            id: circle
            width: 120
            height: 120
            color: "red"
            radius: 60
            x: 0
            y: 0

            property int count: 0

            Text {
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                font.family: "Helvetica"
                font.pointSize: 24
                color: "black"
                text: count
            }

            Circle{
                id: objCircle
            }

            Behavior on x {
                SpringAnimation{
                    spring: 2
                    damping: 0.8
                }
            }

            Behavior on y {
                SpringAnimation{
                    spring: 2
                    damping: 0.8
                }
            }

            MouseArea{

                anchors.fill: parent

                onClicked: {
                    count++
                    counts++
                    account += score
                    circle.color = Qt.rgba(Math.random(),Math.random(),Math.random(),1)
                }


                onDoubleClicked: {
                    circle.visible = false
                }

            }

            Timer {
                interval: speed; running: true; repeat: true
                onTriggered: {
                    x = objCircle.x
                    y = objCircle.y
                }
            }
        }

        model: ListModel {
            id: listModel


            dynamicRoles: true
            Component.onCompleted: {
                if(level.level === 0)
                {
                    for (var i = 0; i < 10; i++)
                    {
                        append({"speed": Idlevels.level1[i][0], "score": Idlevels.level1[i][1]})
                        console.log(Idlevels.level1[i][0])
                    }
                }

                if(level.level === 1)
                {
                    for (var i = 0; i < 10; i++)
                    {
                        append({"speed": Idlevels.level2[i][0], "score": Idlevels.level2[i][1]})
                    }
                }

                if(level.level === 2)
                {
                    for (var i = 0; i < 10; i++)
                    {
                        append({"speed": Idlevels.level3[i][0], "score": Idlevels.level3[i][1]})
                    }
                }

            }
        }

        Button {
            id: button
            x: 592
            y: 1179
            text: qsTr("Back")
            onClicked: {
                loader.setSource("StartMenu.qml")
            }
        }
    }
}
