import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Layouts 1.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ListModel {
        id:myModel
        ListElement {
            name:"jimmy"
            surname:"123"
        }
        ListElement {
            name:"kim"
            surname:"456"
        }
        ListElement {
            name:"Julie"
            surname:"789"
        }
        ListElement {


        }

    }
    ColumnLayout {
        Repeater {
            model: myModel
            delegate: MyCustomComponent {
                myName: name
                mySurname: surname
            }
        }
    }
}
