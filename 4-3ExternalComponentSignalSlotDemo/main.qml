import QtQuick 2.14
import QtQuick.Window 2.14

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("External Component with signals and slots")

    Notifier {
        id: notifierUniqueId
    }

    Receiver {
         id: receiverUniqueId
    }

    Component.onCompleted: {
        notifierUniqueId.notify.connect(receiverUniqueId.receiveInfo);
    }
}
