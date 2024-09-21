import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.4


Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Connections {
        target: CppSignalSender
        onCallQml: {
            console.log("This is QML : callQML signal cought");
            // "parameter" keyword should the same as the parameter variable name in the function definition
            mText.text = parameter;
    }

    Column {
        Button {
            text: "Call C++ Method"
            onClicked: {
                CppSignalSender.cppSlot();
            }
        }

        Text {
            id: mText
            text: "Text"
        }
    }
}
}
