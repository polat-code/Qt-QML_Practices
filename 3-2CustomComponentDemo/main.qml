import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Column {
        anchors.fill: parent
        spacing: 20
        anchors.topMargin: 50
        anchors.leftMargin: 50
        Rectangle {
            width: 300
            height: 100
            color: "red"
        }

        Rectangle {
            width: 300
            height: 100
            color: "blue"
        }


    }

    Column {
        MButton {
             buttonText: "Button2"
                textColor: "white"
             onButtonClicked: {
                 console.log("Button 2 is clicked and signal works properly");
             }
        }
        /*
        MButton {
            //default value is assigned
        }
        */
        MButton {

        }
    }


}


