import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Header Footer and  Highlight Demo")

    ListView {
        id: myListView
        anchors.fill: parent
        header: Rectangle {
            width: parent.width
            height: 50
            color: "dodgerblue"
        }
        footer: Rectangle {
            width: parent.width
            height: 50
            color: "blue"
            radius: 14
            border.color: "yellowgreen"
            border.width: 3
        }
        highlight: Rectangle {
            width: parent
            color: "blue"
            radius: 14
            border.color: "yellowgreen"
            opacity: 0.2
            z: 3
        }

        model: ["January","February","March","April","May","June","July","August","September","October","November","December"]
        //delegate: delegateId
        delegate: Component {
            id: delegateId
            Rectangle {
                id: rectangleId
                color: "beige"
                width: parent.width
                height: 50
                border.color: "yellowgreen"
                radius: 10

                Text {
                    id: textId
                    anchors.centerIn: parent
                    font.pointSize: 20
                    text: modelData // special Variable Name for Array
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked:  {
                        console.log("Clicked : " + modelData)
                        myListView.currentIndex = index
                    }
                }
            }
        }
    }

}
