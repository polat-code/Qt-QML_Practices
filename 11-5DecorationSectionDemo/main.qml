import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Section Demo (Decoration)")

    ListView {
        id: listViewId
        anchors.fill: parent
        model: mListModel

    }

    ListModel {
        id: mListModel

        ListElement {
            name:"Özgürhan Polat"; company: "Google";
        }
        ListElement {
            name:"Ahmet Kadir"; company: "Apple";
        }
        ListElement {
            name:"Faith Durmuş"; company: "Facebook";
        }
        ListElement {
            name:"Kadir Bilekli"; company: "Youtube";
        }
        ListElement {
            name:"Serpil Çağlı"; company: "Yücel Grup";
        }
        ListElement {
            name:"Emre Taşdemir"; company: "Google";
        }
        ListElement {
            name:"Ahmet Can Develi"; company: "Sunglass";
        }
        ListElement {
            name:"Özgürhan Polat"; company: "Google";
        }
        ListElement {
            name:"Özgürhan Polat"; company: "Sunglass";
        }
        ListElement {
            name:"Durmaz Durmaz"; company: "Youtube";
        }
        ListElement {
            name:"Sevgi Bolat"; company: "Google";
        }
        ListElement {
            name:"Özgürhan Polat"; company: "Youtube";
        }
    }
}
