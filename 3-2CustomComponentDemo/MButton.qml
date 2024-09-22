import QtQuick 2.12

Item {
    id: mButtonRootId

    property string buttonText: "default"
    property color textColor: "red"
    width: buttonContainerId.width
    height: buttonContainerId.height

    // Signal is a method interface and it is implemented when component is created and it is good idea to  be implemented otherwise somethings cannot work properly


    // OnClicked in mouseArea is triggered and onClicked method triggers the buttonClicked method and If buttonClicked method is implemented then
    // it calls the method otherwise it doesn't make anything
    signal buttonClicked

    Rectangle {
        id: buttonContainerId
        width: buttonTextId.implicitWidth + 50
        height: buttonTextId.implicitHeight + 25
        color: "blue"
        border {color: "gray"; width: 3;}
        radius: 10


        Text {
            id: buttonTextId
            text: buttonText
            anchors.centerIn: parent
            color: textColor
        }

         MouseArea {
             anchors.fill: parent
             onClicked:  {
                 //console.log("Clicked on : " + buttonTextId.text)
                 mButtonRootId.buttonClicked()
             }
         }

    }

}
