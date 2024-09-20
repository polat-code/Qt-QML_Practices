import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.0

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Responsive Window in QT/QML")
    // Background color of the window
        Rectangle {
            anchors.fill: parent
            color: "#f0f0f0"

            // Title bar
            Rectangle {
                id: titleBar
                color: "#34495e"
                height: 50
                width: parent.width
                anchors.top: parent.top

                Text {
                    text: "Application Title"
                    color: "white"
                    font.pixelSize: 20
                    anchors.centerIn: parent
                }
            }

            // Main content area
            Rectangle {
                id: contentArea
                anchors.top: titleBar.bottom
                anchors.bottom: footer.top
                anchors.left: parent.left
                anchors.right: parent.right
                color: "#ffffff"
                radius: 10
                border.color: "#cccccc"
                border.width: 1
                anchors.margins: 10

                ColumnLayout {
                    anchors.fill: parent
                    spacing: 10


                    Text {
                        text: "Welcome to the responsive window!"
                        font.pixelSize: 16
                        Layout.alignment: Qt.AlignHCenter
                    }

                    Button {
                        text: "Click Me"
                        Layout.alignment: Qt.AlignHCenter
                        onClicked: {
                            console.log("Button clicked!")
                        }
                    }

                    // An example of a dynamic element (Image)
                    Image {
                        source: "https://www.qt.io/hubfs/qt-design-assets/website/website_new/img/qt-logo.svg"
                        fillMode: Image.PreserveAspectFit
                        width: 100
                        height: 100
                        anchors.horizontalCenter: parent.horizontalCenter
                    }
                }
            }

            // Footer section
            Rectangle {
                id: footer
                color: "#2c3e50"
                height: 40
                width: parent.width
                anchors.bottom: parent.bottom

                Text {
                    text: "© 2024 Your Company"
                    color: "white"
                    font.pixelSize: 14
                    anchors.centerIn: parent
                }
            }
        }

        // Responsive behavior
        Connections {
            target: Window

            onWidthChanged: {
                if (Window.width < 500) {
                    titleBar.height = 40
                    footer.height = 30
                } else {
                    titleBar.height = 50
                    footer.height = 40
                }
            }
        }






    /*
    RowLayout {
            anchors.fill: parent
            spacing: 0
           Rectangle {
               Layout.fillWidth: true
               //Layout.minimumWidth: 50
               //Layout.maximumWidth: 300
               color: "blue"
               Layout.preferredWidth: 100
               Layout.maximumWidth: 500
               Layout.minimumWidth: 50
               Layout.preferredHeight: 50
               //implicitHeight: 50
               //implicitWidth: 50
               Text {
                   text: parent.width
                   //text : "Hello World"
                   color: "white"
                   anchors.centerIn: parent
                   font.pixelSize: 30
               }

           }
           Rectangle {
               Layout.fillWidth: true
               color: "red"
               Layout.preferredWidth: 200
               Layout.minimumWidth: 50
               Layout.maximumWidth: 500
               Layout.preferredHeight: 50
               //implicitHeight: 50
               //implicitWidth: 50
               Text {
                   text: parent.width
                   //text : "Hello World"
                   color: "white"
                   anchors.centerIn: parent
                   font.pixelSize: 30
               }

           }
           Item {
               Layout.fillWidth: true;
           }
           MyComponent {

           }



           Text {
               text: "Hello"
               font.pixelSize: 30
           }



    }

*/


}
