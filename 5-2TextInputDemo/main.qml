import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("TextInput Element Demo")

    Row {
        x: 10; y:10
        spacing: 10

        Rectangle {
            id:firstNameRectId
            color: "beige"
            width: firstNameLabelId.implicitWidth + 20
            height: firstNameLabelId.implicitHeight + 20
            Text {
                id: firstNameLabelId
                anchors.centerIn: parent
                text: "First Name : "
            }
        }

        Rectangle {
            id: firstNameRectTextId
            color: "beige"
            width: firstNameTextId.implicitWidth + 20
            height: firstNameTextId.implicitHeight + 20

            TextInput {
                id: firstNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type your first name"
                onEditingFinished: {
                    console.log("First name focus is finished")
                }
            }
           MouseArea {
               anchors.fill: parent
               onClicked: {

                   firstNameTextId.focus = true
               }
           }

        }
    }

    Row {
        x: 10; y:60
        spacing: 10

        Rectangle {
            id:lastNameRectId
            color: "beige"
            width: lastNameLabelId.implicitWidth + 20
            height: lastNameLabelId.implicitHeight + 20
            Text {
                id: lastNameLabelId
                anchors.centerIn: parent
                text: "Last Name : "
            }
        }

        Rectangle {
            id: lastNameRectTextId
            color: "beige"
            width: lastNameTextId.implicitWidth + 20
            height: lastNameTextId.implicitHeight + 20

            TextInput {
                id: lastNameTextId
                anchors.centerIn: parent
                focus: true
                text: "Type your last name"
                onEditingFinished: {
                    console.log("Last name focus is finished!")
                }
            }
           MouseArea {
               anchors.fill: parent
               onClicked: {

                  lastNameTextId.focus = true
               }
           }

        }
    }
}
