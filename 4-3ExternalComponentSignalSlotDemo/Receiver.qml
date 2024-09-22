import QtQuick 2.12

Item {
    id: receiverContainerId
    property int count: 0
    property alias rectColor: receiverRectId.color


    function receiveInfo(count) {
         receiverDisplayTextId.text = count
        console.log("Count is : " + count)
    }


    width: receiverRectId.width
    height: receiverRectId.height
    anchors.right: parent.right
    Rectangle {
        id: receiverRectId
        width: 200
        height: 200
        color: "blue"


        Text {
            id:receiverDisplayTextId
            anchors.centerIn: parent
            font.pointSize: 20
            text: "0"
            color: "white"

        }


    }
}
