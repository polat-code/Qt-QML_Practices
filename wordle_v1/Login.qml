import QtQuick 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12

Page {

    anchors.fill: parent
    signal requestPageChange(string page);
    property bool isFocusField : true;
    Column{
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
            id: emailInputFieldInLoginId
            labelName: "Email"
            isFocus: isFocusField
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
                    //loader.push("")
                }
            }
            StyledButton {
                color: "#000000"
                text: "Back to Main Page"
                onButtonClicked: {
                   requestPageChange("mainPageWithoutLogin");
                }
            }


        }


    }

    Component.onCompleted: {
        emailInputFieldInLoginId.forceActiveFocus(); // Set focus to the email input field when the page is loaded
    }



}
