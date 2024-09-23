import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Mouse Area Demo")

    Rectangle {
        id: containerRectId
        width: parent.width
        height: 200
        color: "beige"

        Rectangle {
            id: movingRectId
            width: 50
            height: width
            color: "blue"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log(mouse.x);
                movingRectId.x = mouse.x
            }
            onWheel: {
                console.log("X : " + wheel.x + " Y : " + wheel.y + " angleData : " + wheel.angleDelta);
            }
            hoverEnabled: true
            onHoveredChanged: {
                if(containsMouse === true) {
                     containerRectId.color = "red"
                }else {
                    containerRectId.color = "green"
                }
            }
        }

    }


    Rectangle {
        id: dragContainerId
        width: parent.width
        height: 200
        color: "beige"
        y : 250

        Rectangle {
            id: draggableRectId
            width: 50
            height: width
            color: "blue"

            onXChanged: {
                console.log("X Coordinate is : " + x)
            }
        }

        MouseArea {
            anchors.fill: parent
            drag.target: draggableRectId
            drag.axis: Drag.XandYAxis
            drag.minimumX: 0
            drag.maximumX: dragContainerId.width - draggableRectId.width

        }
    }
}
