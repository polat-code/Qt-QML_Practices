import QtQuick 2.0

FocusScope {

    width: containerRectId.width
    height: containerRectId.height

    property alias color: containerRectId.color

    Rectangle {
        id: containerRectId
        width: 300
        height: 50
        color: "beige"
        focus: true

        Text {
            id: textId
            anchors.centerIn: parent
            text: "Default"
        }

        Keys.onPressed: {
            if(event.key === Qt.Key_1){
                textId.text = "Pressed on Key 1"
            }else if(event.key === Qt.Key_2) {
                textId.text = "Pressed on Key 2"
            }else {
                textId.text = "Pressed on another key: " + event.key
            }
        }
    }
}
