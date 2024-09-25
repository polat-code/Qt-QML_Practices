import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column {
        Text {
            id: titleTextId
            width: 500
            text: Movie.title
            font.pointSize: 20
            anchors.horizontalCenter: parent.horizontalCenter

        }
        Text {
            id: mainCharacterTextId
            width: 500
            text: Movie.mainCharacter
            font.pointSize: 20
            anchors.horizontalCenter: parent.horizontalCenter

        }


        Row {
            spacing: 20
            TextInput {
                id: titleTextInputId
                width: 300

            }

            Button {
                text: "Save Title"
                onClicked: {
                    Movie.setTitle(titleTextInputId.text)
                }

            }
        }
        Row {
            TextInput {
                id: mainCharacterTextInputId
                width: 300

            }

            Button {
                text: "Save Title"
                onClicked: {
                    Movie.setMainCharacter(mainCharacterTextInputId.text)
                }

            }
        }
    }
}
