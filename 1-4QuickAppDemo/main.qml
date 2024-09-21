import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    id:parentWindow
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Text {
        id: helloText
        anchors.bottom: parentWindow.bottom
        text: "Hello World"
        font.pointSize: 20
        color: "red"

    }
    Component.onCompleted: {
        var summation = 5 + 4;
        console.log(summation);
    }


}
