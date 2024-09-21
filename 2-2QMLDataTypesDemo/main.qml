import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    property string myString: "My String property"
    property int myInt: 45
    property bool isFemale: false
    property double myDouble: 73.3
    property url myUrl: "https://www.google.com"
    property var aNumber: 100
      property var aBool: false
      property var aString: "Hello world!"
      property var anotherString: String("#FF008800")
      property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
      property var aRect: Qt.rect(10, 10, 10, 10)
      property var aPoint: Qt.point(10, 10)
      property var aSize: Qt.size(10, 10)
      property var aVector3d: Qt.vector3d(100, 100, 100)
      property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
      property var anObject: { "foo": 10, "bar": 20 }
      property var aFunction: (function() { return "one"; })
    property var aFont: Qt.font({family:"Consolas", pointSize: 30 , bold: true})
    property date mDate: "2018-07-19"

    Rectangle {
        width: 200
        height: 100 + myInt
        anchors.centerIn: parent
        color: "yellow"

        Text {
            id: mTextId
            anchors.fill: parent

            //anchors.horizontalCenter: parent.horizontalCenter
            //horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: myString + myInt + " my double : "+ myDouble
            //font.bold: isFemale?true:false
            font: aFont
        }

        MouseArea {
            id: myMouseAreaId
            anchors.fill: parent
            onClicked: {
                isFemale = !isFemale
            }

        }
    }

    Component.onCompleted: {
        //console.log("The value of myString is : " + myString)
        print("The value of myString is : " + myString)

        if(isFemale){
            myString = "You wear something else."
        }

        anArray.forEach((item,index) => {
                        if(index === 5) {
                                console.log(item())
                            }
                         else {
                                console.log(item);
                            }
                        })
    }
}
