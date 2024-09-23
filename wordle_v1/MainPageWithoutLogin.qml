import QtQuick 2.14

Item {
    anchors.fill: parent
    Column{
        anchors.horizontalCenter: parent.horizontalCenter

        // Top Margin
        Rectangle {
            id: mainPageWithoutLogiTtopMargin
            width: 505
            height: 50
        }
        WordleLogo {}


        WordleGameHeader {}

        Rectangle {
            width: parent.implicitWidth
            height: 30
        }

        Row {

            spacing: 20
            StyledButton {
                color: "#6AAA64"
                text: "Play without login"
                customWidth: 200

            }
            StyledButton {
                color: "#D1B036"
                text: "Login"
                customWidth: 200
            }
            StyledButton {
                color: "#000000"
                text: "Register"
                customWidth: 200
            }
        }


    }



}
