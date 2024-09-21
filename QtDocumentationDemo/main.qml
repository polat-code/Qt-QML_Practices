import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: page
        width: 320; height: 480
        color: "lightgray"

        Text {
            id: helloText
            text: "Hello World!"
            y:30
            anchors.horizontalCenter: page.horizontalCenter
            font.pointSize: 24;font.bold: true

        }

        Grid {
            id:colorPicker
            x: 4
            anchors.bottom: page.bottom
            anchors.bottomMargin: 4
            rows: 2; columns: 3; spacing: 3

            Cell { cellColor: "red"; onClicked1: helloText.color = cellColor}
            Cell { cellColor: "green"; onClicked1: helloText.color = cellColor}
            Cell { cellColor: "blue"; onClicked1: helloText.color = cellColor}
            Cell { cellColor: "yellow"; onClicked1: helloText.color = cellColor}
            Cell { cellColor: "steelblue"; onClicked1: helloText.color = cellColor}
            Cell { cellColor: "black" ; onClicked1: helloText.color = cellColor}
        }
    }


    /*

    Rectangle {
        id: page
        width: parent.width
        height: parent.height
        color: "lightgray"

        Text {
            id: helloText
            text: "Hello World"
            y: 30
            anchors.horizontalCenter: page.horizontalCenter
            font.pointSize: 24;font.bold: true
        }
    }

    */


}
