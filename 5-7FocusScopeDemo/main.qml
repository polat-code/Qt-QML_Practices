import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Focus Scope Demo")

    Column {

        MyButton2 {
            color: "green"
            focus: true
        }


        MyButton2 {
            color: "green"
            focus: true
        }
    }


}
