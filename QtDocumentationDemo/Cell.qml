import QtQuick 2.0

Item {

    id: container
    property alias cellColor: rectangle.color

    signal clicked1(cellColor : color)

    width: 40;height: 25

    Rectangle {
        id: rectangle
        border.color: "white"
        anchors.fill: parent

        MouseArea {
            anchors.fill: parent
            onClicked: container.clicked1(container.cellColor);
        }
    }

}
