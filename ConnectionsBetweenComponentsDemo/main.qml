import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Row {

        spacing: 20
        Rectangle {
            id: theRect1Id
            width: 100
            height: 100
            color: "red"

            MouseArea {
                id: theRect1MouseAreaId
                anchors.fill: parent
                onClicked:  {
                    console.log("Clicked the red Rectangle")
                }
            }
        }

        Rectangle {
            id: theRect2Id
            width: 100
            height: 100
            color: "blue"

            Connections {
                target: theRect1MouseAreaId

                onClicked:  {
                    console.log("This is blue rect responsing")
                }
            }
        }
        Rectangle {
            id: theRect3Id
            width: 100
            height: 100
            color: "green"

            Connections {
                target: theRect1MouseAreaId

                onClicked:  {
                    console.log("This is green rect responsing")
                }
            }
        }
    }
}
