import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Connections C++ Demo")

    Connections {
        target: CppSignalSender
        onCallQml: {
            console.log("This is QML : callQML signal caught")
            mText.text = parameter;
        }
        onCppTimer {
            mRectTextId.text: value;
        }
    }

    Column {
        Rectangle {
            width: 200
            height: 200
            color: "red"
            radius: 20
            Text {
                id: mRectTextId
                text: "0"
                anchors.centerIn: parent
                color: "white"
                font.pointSize: 30
            }
        }

        Button {
            text: "Call C++ Method"
            onClicked:  {
                CppSignalSender.cppSlot();
            }
        }

        Text {
            id: mText
            text: "Default"

        }
    }

}
