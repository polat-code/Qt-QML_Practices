import QtQuick 2.12

Rectangle {
    id: buttonRectId


    property color buttonColor: buttonRectId.color;
    property string text: buttonTextId.text
    signal buttonClicked();


    width: 224
    height: 50
    radius: 13

    Text {
        id: buttonTextId
        anchors.centerIn: parent
        text: buttonRectId.text
        color: "white"
        font.pointSize: 20

    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            buttonClicked();
        }
    }

}
