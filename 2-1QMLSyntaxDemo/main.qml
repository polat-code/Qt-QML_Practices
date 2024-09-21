import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id: rootId
    visible: true
    width: 640
    height: 480
    title: qsTr("QML Syntax Demo")

    property string textShow: "hello"

    Row {
        id: row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id: redRectId
            width: 150; height: 150
            color: "red"
            radius: 20

            Text {
                id:redRectTextId
                color: "white"
                text: "red rectangle"

            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the red rectangle")
                    textShow = "red"
                }
            }
        }

        Rectangle {
            id: greenRectId
            width: 150; height: 150
            color: "green"
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the green rectangle")
                    textShow =  "green"
                }
            }
        }

        Rectangle {
            id: blueRectId
            width: 150; height: 150
            color: "blue"
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the blue rectangle")
                    textShow = "blue"
                }
            }
        }

        Rectangle {
            id: blueCircleId
            width: 150; height: 150
            color: "dodgerblue"
            radius: 100

            Text {
                id:blueCircleTextId
                color: "white"
                text: textShow
                anchors.centerIn: parent

            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the red rectangle")
                    blueCircleTextId.text = "loop"
                }
            }
        }


    }
}
