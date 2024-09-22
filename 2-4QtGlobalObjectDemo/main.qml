import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Qt Global Object Demo")

    property var fonts: Qt.fontFamilies()

    Rectangle {
        width: 300
        height: 100
        color: "red"
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent
            onClicked: {

                // Quit the application
                console.log("Quitting the app")
                Qt.quit();


                // List the available fonts
                for(var i = 0; i < fonts.length; i++) {
                    console.log("[" + i + "] : " + fonts[i] )
                }

                // Hash a string
                var myName = "özgürhan";
                var myNameHash = Qt.md5(myName);
                console.log(myNameHash);

                // Open Url externally
                //Qt.openUrlExternally("https://google.com")

                // Open an image in local pc
                Qt.openUrlExternally("file:///Users/ozgurhanpolat/Downloads/wordle.webp")

                // Showing platform
                   console.log("The current platform is " + Qt.platform.os);


            }
        }
    }
}
