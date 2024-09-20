import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.5

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Column {
        spacing: 10
        Button {
            text: "Call C++ Method"
            onClicked: {
                BWorker.regularMethod();
                BWorker.cppSlot();
            }
        }

        Rectangle {
            width: textToShowId.implicitWidth + 20
            height: 50
            color: "beige"
            Text {
                id: textToShowId
                text: BWorker.regularMethodWithReturn("Ali",25);

            }

        }

    }
    Other {

    }
}
