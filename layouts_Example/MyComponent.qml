import QtQuick 2.0
import QtQuick.Layouts 1.0

Item {
    RowLayout {
            anchors.fill: parent
            spacing: 0
           Rectangle {
               Layout.fillWidth: true
               //Layout.minimumWidth: 50
               //Layout.maximumWidth: 300
               color: "blue"
               Layout.preferredWidth: 100
               Layout.maximumWidth: 500
               Layout.minimumWidth: 50
               Layout.preferredHeight: 50
               //implicitHeight: 50
               //implicitWidth: 50
               Text {
                   text: parent.width
                   //text : "Hello World"
                   color: "white"
                   anchors.centerIn: parent
                   font.pixelSize: 30
               }

           }
           Rectangle {
               Layout.fillWidth: true
               color: "red"
               Layout.preferredWidth: 200
               Layout.minimumWidth: 50
               Layout.maximumWidth: 500
               Layout.preferredHeight: 50
               //implicitHeight: 50
               //implicitWidth: 50
               Text {
                   text: parent.width
                   //text : "Hello World"
                   color: "white"
                   anchors.centerIn: parent
                   font.pixelSize: 30
               }

           }
           Item {
               Layout.fillWidth: true;
           }

           /*
           Text {
               text: "Hello"
               font.pixelSize: 30
           }
            */


    }

}
