import QtQuick 2.6
import QtQuick.Window 2.2
import circle 1.0

Window {
    visible: true
    width: 600
    height: 600
    color: "azure"
    title: qsTr("Test")

    property int account: 0
    property int counts: 0

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
        id: text
        font.family: "Helvetica"
        font.pointSize: 24
        color: "black"
        text: counts
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
        height: parent.width
        interactive: false


        delegate:
            Rectangle {
            id: circle
            width: 60
            height: 60
            color: "red"
            radius: 40
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
                    x = objCircle.slotPositionX()
                    y = objCircle.slotPositionY()
                }
            }
        }

        model: ListModel {
            id: listModel


            dynamicRoles: true
            Component.onCompleted: {
                append({"speed": 500, "score": 50})
                append({"speed": 500, "score": 50})
                append({"speed": 800, "score": 20})
                append({"speed": 800, "score": 20})
                append({"speed": 800, "score": 20})
                append({"speed": 1000, "score": 5})
                append({"speed": 1000, "score": 5})
                append({"speed": 1000, "score": 5})
                append({"speed": 1500, "score": 2})
                append({"speed": 1500, "score": 2})
            }
        }
    }
}
