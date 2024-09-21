import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Landing Page")

    ColumnLayout {
        anchors.centerIn: parent

        ColumnLayout {
            Text {
                id: headerId
                text: "Header 01"
                Layout.alignment: Qt.AlignHCenter
                font.pixelSize: 30
            }

            Text {
                id: infoId
                text: "Give a powerful tool to your self with BlaBla App"
                Layout.alignment: Qt.AlignHCenter
                font.pixelSize: 15
            }

            RowLayout {
                Layout.alignment: Qt.AlignHCenter
                Layout.topMargin: 20
                RowLayout {
                    Layout.rightMargin: 50
                    Button {
                        text: "Log in"
                        Layout.margins: 0
                        width: 150 // Set the width
                        height: 50 // Set the height

                        background: Rectangle {
                            color: "lightblue"
                            border.color: "black"
                            border.width: 2
                            radius: 5
                        }
                        onClicked: {
                            console.log("Log in clicked")
                        }
                    }
                }

                // Larger button with explicit width and height


                Button {
                    text: "Register"
                    width: 150 // Set the width
                    height: 50 // Set the height
                    background: Rectangle {
                        color: "lightgreen"
                        border.color: "black"
                        border.width: 2
                        radius: 5
                    }

                    onClicked: {
                        console.log("Register clicked")
                    }
                }
            }
        }
    }

    Rectangle {
        id: rectangle
        x: 112
        y: 302
        width: 104
        height: 48
        color: "#ffffff"

        Text {
            id: element
            x: 65
            y: 22
            text: qsTr("Text")
            font.pixelSize: 12
        }
    }
}
