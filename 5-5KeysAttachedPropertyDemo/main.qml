import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: containedRect
        anchors.centerIn: parent
        width: 300
        height: 50
        color: "dodgerblue"
        focus: true

        Keys.onDigit1Pressed: {
            console.log(" onDigit1Presse : Pressed on Key 1");
            event.accepted = false
        }
        Keys.onEnterPressed: {

        }
        /*

        Keys.onDigit5Pressed: {
            if(event.modifiers === Qt.ControlModifier) {
                console.log("Pressed Control(Command) + 5");
            }else {
                console.log("Pressed Regular 5");
            }
        }
        */

        Keys.onPressed: {
            if(event.key === Qt.Key_1){
                console.log("onPressed : Space is pressed");
            }

            if((event.key === Qt.Key_5) && (event.modifiers === Qt.ControlModifier)){
                console.log("Pressed Control(Command) + 5");
            }
        }
    }
}
