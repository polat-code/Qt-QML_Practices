import QtQuick 2.0

Item {
    id: button
    property alias buttonColor: buttonRectangle.color

    signal clicked(buttonColor : color)

    width: 100
    height: 50

    Rectangle {
        id: buttonRectangle
        width: parent.width
        height: parent.height
        color: "lightblue"


        MouseArea {
            anchors.fill: parent
            onClicked: button.clicked(buttonColor);
        }
    }
}
