import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Column{

        Row {
            spacing: 20

            Rectangle {
                width: 300
                height: 50
                color: "gray"
                TextInput {
                    id:textInputId
                    text: LetterWithColor.letter;
                    focus: true
                    onTextChanged: {
                        LetterWithColor.letter = textInputId.text;
                    }
                }

            }

            Text {
                id: textPropertyId
                text: LetterWithColor.letter;
                color: LetterWithColor.color == 2 ? "green" : (LetterWithColor.color === 1 ? "yellow" : "gray");
            }
        }

        Row {
            spacing: 20

            Rectangle {
                width: 300
                height: 50
                color: "green"

                Text {
                    text: "Change to Green"
                    color: "white"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked:  {
                       LetterWithColor.color = 2;
                    }

                }

            }

            Rectangle {
                width: 300
                height: 50
                color: "yellow"

                Text {
                    text: "Change to Yellow"
                    color: "black"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked:  {
                       LetterWithColor.color = 1;
                    }

                }

            }
            Rectangle {
                width: 300
                height: 50
                color: "gray"

                Text {
                    text: "Change to Gray"
                    color: "white"
                    anchors.centerIn: parent
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked:  {
                       LetterWithColor.color = 0;
                    }

                }

            }

        }

    }






    /*

    Column {
        spacing: 20

        Text {
            id: text1Id
            text: NestedClass.property
            color: "red"
        }
        Text {
            id: text2Id
            text: NestedClass.property
            color: "blue"
        }
        Text {
            id: text3Id
            text: NestedClass.property
            color: "black"
        }

        Rectangle {
            id: increasePropertyButtonId
            width: 250
            height: 250
            color: "gray"

            Text {
                id: buttonTextId
                text: "Increase Property"
            }

            MouseArea {
                anchors.fill: parent
                onClicked:  {
                    NestedClass.property++;
                }
            }

        }
    }
    */



}
