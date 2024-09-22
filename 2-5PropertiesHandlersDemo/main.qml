import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Properties and Handlers Demo")

    property string myFirstName: "Özgürhan"
    onMyFirstNameChanged: {
        console.log("The first name is changed to " + myFirstName);
    }

    Rectangle {
        width: 300
        height: 100
        color: "greenyellow"
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent
            onClicked: {
                myFirstName += " Polat"
            }
        }
    }

    Component.onCompleted: {
        console.log("The firstname is : " + myFirstName);
    }


}
