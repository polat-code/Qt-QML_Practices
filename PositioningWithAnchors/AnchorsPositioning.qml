import QtQuick 2.0

Item {
    Rectangle {
        id: rect1
        color: "blue"
        width: 100
        height: 100

    }
    Rectangle {
        id: rect2
        color:"red"
        width: 100
        height: 100
        anchors.top:rect1.bottom
        anchors.left: rect1.right
        anchors.leftMargin: 5
        anchors.topMargin: 20
    }

    Rectangle {
        id: rect3
        color: "black"
        height: 100
        width: 100
        anchors.left: rect2.right
        anchors.top: rect2.bottom
    }

    Rectangle {
        id: rect4
        color: "green"
        height: 100
        width: 100
        anchors.bottom: rect3.top
        anchors.left: rect3.right


    }
}
