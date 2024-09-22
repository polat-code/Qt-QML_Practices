import QtQuick 2.12

Item {
    id: notifierContainerId
    property int count: 0
    property alias rectColor: notifierRectId.color

    signal notify(string count) // Declare signal


    width: notifierRectId.width
    height: notifierRectId.height
    Rectangle {
        id: notifierRectId
        width: 200
        height: 200
        color: "red"


        Text {
            id:displayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: count
            color: "white"

        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                count += 1;
                notifierContainerId.notify(count);
            }
        }
    }
}
