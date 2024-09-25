import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Call C++ From QML");

    Column {
        spacing: 10
        Button {
            text: "Call C++ Method"
            onClicked: {
                //BWorker.cppSlot();
                //BWorker.regularMethod();
                User1.registerUser();
                User1.loginUser();

            }
        }

        Rectangle {
            width: textToShowId.width
            height: 50
            color: "beige"

            Text {
                id: textToShowId
                //text: BWorker.regularMethodWithReturn("Özgürhan",24);
                text: User1.getName();
            }

        }
    }
}
