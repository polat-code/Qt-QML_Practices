import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Signals and Slots Demo")

    Rectangle {
        id: rectangleId
        width: 200
        height: 300
        color: "red"

        signal greet(string message); // Declare Signal

        onGreet: {
            console.log("greet is emitted")
        }

        // I can connect multiple function to signal .

        function myGreeting(mMessage) {
            console.log("mygreeting slot called. The parameter is : " + mMessage);
        }
        function myGreeting2(mMessage) {
            console.log("mygreeting slot called. The parameter is : " + mMessage);
        }

        MouseArea {
            anchors.fill: parent
            onClicked:  {
                rectangleId.greet("Hello There"); // Fire signal
            }
        }
        Component.onCompleted: {
            rectangleId.greet.connect(rectangleId.myGreeting);
            rectangleId.greet.connect(rectangleId.myGreeting2);
        }
    }


}
