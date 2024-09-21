import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property string myString: "My String property"
    property int myInt: 45
    property bool isFemale: false
    property double myDouble: 73.3
    property url myUrl: "https://www.google.com"

    Rectangle {
        width: 200
        height: 100 + myInt
        anchors.centerIn: parent
        color: "yellow"

        Text {
            id: mTextId
            anchors.fill: parent

            //anchors.horizontalCenter: parent.horizontalCenter
            //horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: myString + myInt + " my double : "+ myDouble
            font.bold: isFemale?true:false
        }

        MouseArea {
            id: myMouseAreaId
            anchors.fill: parent
            onClicked: {
                isFemale = !isFemale
            }

        }
    }

    Component.onCompleted: {
        //console.log("The value of myString is : " + myString)
        print("The value of myString is : " + myString)

        if(isFemale){
            myString = "You wear something else."
        }
    }
}
