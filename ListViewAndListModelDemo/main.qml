import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("ListView and ListModel Demo")

    ListView {
        id: myListView
        anchors.fill: parent
        model: myModelId
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
                    text: country + " : " + city
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked:  {
                        console.log("Clicked : " + country + " : " + city)
                    }
                }
            }
        }
    }

    ListModel {
        id: myModelId
        ListElement {
            country:"Turkey"; city:"İzmir"
        }
        ListElement {
            country:"USA"; city: "New York"
        }
        ListElement {
            country:"France"; city: "Paris"
        }
        ListElement {
            country:"Germany"; city: "Hamburg"
        }
        ListElement {
            country:"Russia"; city: "Moscova"
        }
        ListElement {
            country:"Russia"; city: "Moscova"
        }
        ListElement {
            country:"Russia"; city: "Moscova"
        }
        ListElement {
            country:"Russia"; city: "Moscova"
        }
        ListElement {
            country:"Russia"; city: "Moscova"
        }
        ListElement {
            country:"Russia"; city: "Moscova"
        }
        ListElement {
            country:"Russia"; city: "Moscova"
        }
        ListElement {
            country:"Russia"; city: "Moscova"
        }
    }
    /*
    Component {
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
                text: country + " : " + city
            }

            MouseArea {
                anchors.fill: parent
                onClicked:  {
                    console.log("Clicked : " + country + " : " + city)
                }
            }
        }
    }
*/



}
