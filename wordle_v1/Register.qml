import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
Page {

    anchors.fill: parent
    signal requestPageChange(string page);
    Column{
        anchors.horizontalCenter: parent.horizontalCenter

        Rectangle {
            width: 505
            height: 20
        }

        RegisterHeader {

        }

        Rectangle {
            width: 505
            height: 44
        }

        InputFieldWithLabel{
            labelName: "Name"
            isFocus: true
            onGetTextInputResult: {
                console.log("Name : " + text)
            }
        }
        InputFieldWithLabel{
            labelName: "Surname"
            onGetTextInputResult: {
                console.log("Surname : " + text)
            }

        }
        InputFieldWithLabel{
            labelName: "Email"
            onGetTextInputResult: {
                //console.log("Email : " + text)
            }

        }
        InputFieldWithLabel{
            labelName: "Telephone"
            onGetTextInputResult: {
                //console.log("Telephone : " + text)
            }

        }
        InputFieldWithLabel{
            labelName: "Password"
            onGetTextInputResult: {
                //console.log("Telephone : " + text)
            }

        }
        InputFieldWithLabel{
            labelName: "Repeat Password"
            onGetTextInputResult: {
                //console.log("Telephone : " + text)
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
                text: "Register"
                onButtonClicked: {
                    console.log("Styled button is clicked")
                }
            }
            StyledButton {
                color: "#000000"
                text: "Back to Main Page"
                onButtonClicked: {
                    requestPageChange("mainPageWithoutLogin")
                }
            }


        }


    }
}
