import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Rectangle {
        id: theRectId
        width: 50
        height: width * 1.5
        color: "red"
    }

    Rectangle {
        id: blueRectId
        color: "blue"
        width: 100
        height: 100
        anchors.bottom: parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                theRectId.width = theRectId.width + 10
            }
        }
    }

    Rectangle {
        id:greenRectId
        color: "green"
        width: 100
        height: 100
        anchors.bottom: parent.bottom
        anchors.left: blueRectId.right

        MouseArea {
            anchors.fill: parent
            onClicked: {
                theRectId.height =Qt.binding(() => {
                              return  theRectId.width * 2
                                             })
            }
        }


    }

    Rectangle {
          width: 300; height: 55
          color: Qt.application.active ? "white" : "lightgray"
          Text {
              text: "Application " + (Qt.application.active ? "active" : "inactive")
              opacity: Qt.application.active ? 1.0 : 0.5
              anchors.centerIn: parent
          }
      }
}
