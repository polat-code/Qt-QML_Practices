import QtQuick 2.0
import QtQuick.Layouts 1.3

Item {
    implicitHeight: myText.implicitHeight
    implicitWidth: myText.implicitWidth

    property string myName : "default name"
    property string mySurname : "default surname"
    Text {
        id: myText
        text: myName + " " + mySurname
        font.pixelSize: 50
    }
}
