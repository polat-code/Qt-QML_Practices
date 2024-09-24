import QtQuick 2.12
import QtQuick.Layouts 1.12
Item {

    anchors.fill: parent
    Column{
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            width: 505
            height: 30
        }

        Rectangle {
            width: 505
            height: 44
            anchors.horizontalCenter: parent.horizontalCenter
            Text {
                id: guessWordHeaderId
                text: qsTr("Guess Word")
                anchors.horizontalCenter: parent.horizontalCenter
                font.pointSize: 36

            }
        }

        GameFeedbackMessage {
            message: "This is a message"
            textColor: 0 // or textColorsEnumTypeId.Success
        }

        GameRowsContainer {

        }






    }
}
