import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Rectangle {
        id: page
        visible: true
        width: parent.width
        height: parent.height
        color: "lightgray"

        Text {
            id: helloText
            text: "Sinyale Bas"
            anchors.centerIn: parent
            font.pointSize: 24
            font.bold: true
        }

        Buton {
            x: 20
            y: 400
            buttonColor: "blue"
            onClicked: page.color = buttonColor
        }


    }
}
