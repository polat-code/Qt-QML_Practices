import QtQuick 2.0
import QtQuick.Layouts 1.12

Item {
    anchors.fill: parent
    ColumnLayout{
        anchors.horizontalCenter: parent.horizontalCenter

        LoginHeader {

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
    }



}
