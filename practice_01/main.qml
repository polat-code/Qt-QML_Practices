import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property string test: "test"

    MyComponent {
        //width: 100
        //sheight: 100
        //anchors.fill : parent
        clip: true
        //myValue: test
    }
}
