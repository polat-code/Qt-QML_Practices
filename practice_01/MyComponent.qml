import QtQuick 2.0
import QtQuick.Layouts 1.0

Item {
    implicitHeight: theRow.implicitHeight
    implicitWidth: theRow.implicitWidth

     property string myValue: "default"

    RowLayout {
        id:theRow
        anchors.fill: parent



        /*
        Rectangle {
            id: theRect1

            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "red"

        }
        Rectangle {
            id: theRect2

            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "blue"

        }
        */
        Text {
            id: text1
            text: qsTr(myText)
            font.pixelSize: 50
            color: "red"
        }
        Text {
            id: text2
            text: qsTr(myText)
            font.pixelSize: 50
            color: "blue"
        }
    }

}
