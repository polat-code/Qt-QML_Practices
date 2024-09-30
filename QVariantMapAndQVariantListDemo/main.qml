import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")


    Button {
        id: button1Id
        text: "GetVariantListFromCpp"
        onClicked: {
            var data = CppClass.getVariantListFromCpp();
            data.forEach(function(element){
                console.log("Array Item : " + element);

            })
        }
    }

    Button {
        id:button2Id
        anchors.top: button1Id.bottom
        text: "GetVariantMapFromCpp"
        onClicked:  {
            var data = CppClass.getVariantMapFromCpp();
            for(var mkey in data) {
                console.log("Object[" + mkey + "] :" + data[mkey]);
            }
        }
    }
}
