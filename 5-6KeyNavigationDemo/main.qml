import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Key Navigation Demo")

    /*

    Row {
        anchors.centerIn: parent

        Rectangle {
            id: firstRectId
            width: 200
            height: width
            border.color: "black"
            color: "green"
            focus: true

            Keys.onDigit5Pressed: {
                console.log("Digit 5 is pressed 1");
            }
            // Key Navigation is arrow buttons in keyboard
            // If right arrow is clicked in keyboard then focus should be secondRectId
            KeyNavigation.right: secondRectId
        }
        Rectangle {
            id: secondRectId
            width: 200
            height: width
            border.color: "black"
            color: "green"

            Keys.onDigit5Pressed: {
                console.log("Digit 5 is pressed 2");
            }
            // Key Navigation is arrow buttons in keyboard
            // If left arrow is clicked in keyboard then focus should be secondRectId
            KeyNavigation.left: firstRectId
        }
    }
    */


    Grid {
        width: 100; height: 100
        columns: 2

        Rectangle {
            id: topLeft
            width: 50; height: 50
            color: focus ? "red" : "lightgray"
            focus: true

            KeyNavigation.right: topRight
            KeyNavigation.down: bottomLeft
        }

        Rectangle {
            id: topRight
            width: 50; height: 50
            color: focus ? "red" : "lightgray"

            KeyNavigation.left: topLeft
            KeyNavigation.down: bottomRight
        }

        Rectangle {
            id: bottomLeft
            width: 50; height: 50
            color: focus ? "red" : "lightgray"

            KeyNavigation.right: bottomRight
            KeyNavigation.up: topLeft
        }

        Rectangle {
            id: bottomRight
            width: 50; height: 50
            color: focus ? "red" : "lightgray"

            KeyNavigation.left: bottomLeft
            KeyNavigation.up: topRight
        }
    }
}
