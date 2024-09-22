import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Item {
        id: containerItemId
        x: 150; y: 150
        width: 400
        height: 300

        Rectangle {
            anchors.fill: parent
            color: "beige"
            border.color: "black"
        }



        Rectangle {
            x: 0 ; y: 10
            width: 50
            height: 50
            color: "red"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }

            }
        }


        Rectangle {
            x: 60 ; y: 10
            width: 50
            height: 50
            color: "blue"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }

            }
        }

        Rectangle {
            x: 120 ; y: 10
            width: 50
            height: 50
            color: "green"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }

            }
        }

        Rectangle {
            x: 180 ; y: 10
            width: 50
            height: 50
            color: "pink"
            MouseArea {
                anchors.fill: parent
                onClicked: {

                }

            }
        }

        Text {
            id: myTextId
            text: "My Text Value"
            x: 100; y:100
            // font.pointSize: 20; font.family: "Helvetica"; font.bold: true

            font {
                family: "Helvetica"
                pointSize: 25
                bold: true
            }

            color: "red"

            //anchors.centerIn: parent
        }
        
        //Create images file in source file directory > Add New > Qt > Q Resource file > Give "resource" name > Left click and Open with > Resource editor > Prefix is empty(""). Add files > Select image
        Image {
            x:10
            y: 150
            width: 100
            height: 100
            // Give absolute path
            source: "images/foto.png"
        }
    }
}
