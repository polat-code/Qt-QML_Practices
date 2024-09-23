import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("TextEdit Demo")


    Flickable {
        width: textEditId.width
        contentHeight: textEditId.implicitHeight
        height: 400
        clip: true
        anchors.centerIn: parent
        // Multiple Line Text
        TextEdit {
            id: textEditId
                anchors.centerIn: parent
              width: 240

              text: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."
              wrapMode: Text.Wrap
              textFormat: Text.RichText
              font.family: "Helvetica"
              font.pointSize: 20
              color: "blue"
              focus: true

              onEditingFinished: {
                  console.log("The current text is " + textEditId.text)
              }
          }
    }

    Rectangle {
        id:theRectId
        width: 200
        height: 100
        anchors.bottom: parent.bottom
        color: "red"

        MouseArea {
            anchors.fill: parent
            onClicked: {
                theRectId.focus = true
            }
        }
    }


}
