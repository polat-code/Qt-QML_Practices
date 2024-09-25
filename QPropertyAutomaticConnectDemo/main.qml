import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("QProperty Automatic Connect Demo")

    Column {
        spacing: 20

        Text {
            id: titleId
            width: 500
            text: Movie.title
            font.pointSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text {
            id: mainCharacterId
            width: 500
            text: Movie.mainCharacter
            font.pointSize: 20
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

}
