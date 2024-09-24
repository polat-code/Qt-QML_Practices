import QtQuick 2.12
import QtQuick.Layouts 1.12

Item {

    anchors.fill: parent
    ColumnLayout{
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            width: 505
            height: 200
        }

        LoginHeader {

        }

        Rectangle {
            width: 505
            height: 44
        }

        InputFieldWithLabel{
            labelName: "Email"
            isFocus: true
            onGetTextInputResult: {
                //console.log("Email : " + text)
            }
        }
        InputFieldWithLabel{
            labelName: "Password"
            onGetTextInputResult: {
                //console.log("Surname : " + text)
            }

        }
        Rectangle {
            width: 505
            height: 20
        }

        Row{
            spacing: 30
            anchors.horizontalCenter: parent.horizontalCenter
            StyledButton {
                color: "#6AAA64"
                text: "Login"
                onButtonClicked: {
                    console.log("Styled button is clicked")
                }
            }
            StyledButton {
                color: "#000000"
                text: "Back to Main Page"
                onButtonClicked: {
                    console.log("Styled button is clicked")
                }
            }


        }


    }



}
