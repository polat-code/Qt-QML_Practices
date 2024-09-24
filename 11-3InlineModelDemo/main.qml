import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Inline Model Demo")
    ListView {
        id: myListView
        anchors.fill: parent
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
                    }
                }
            }
        }
    }



}
