import QtQuick 2.0

Item {

    Component.onCompleted: {
        BWorker.cppSlot();
    }
}
