import QtQuick 2.0

Rectangle {
    width: 505
    height: 410
    anchors.horizontalCenter: parent.horizontalCenter

    Column {
        anchors.horizontalCenter: parent.horizontalCenter
        GameBoxRow {
            isInfoVisible: false
            isBoxClickable: false
        }
        GameBoxRow {
            isInfoVisible: true
            isBoxClickable: true
        }
        GameBoxRow {
            isInfoVisible: false
            isBoxClickable: false
        }
        GameBoxRow {
            isInfoVisible: false
            isBoxClickable: false
        }
        GameBoxRow {
            isInfoVisible: false
            isBoxClickable: false
        }
        GameBoxRow {
            isInfoVisible: false
            isBoxClickable: false
        }
    }




}
