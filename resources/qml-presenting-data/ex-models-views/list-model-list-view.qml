import QtQuick 2.0

Rectangle {
    width: 150; height: 200; color: "white"

    ListModel {
        id: nameModel
        ListElement { name: "Alice" }
        ListElement { name: "Bob" }
        ListElement { name: "Jane" }
        ListElement { name: "Victor" }
        ListElement { name: "Wendy" }
    }

    Component {
        id: nameDelegate
        Text {
            text: name;
            font.pixelSize: 32
        }
    }

    ListView {
        anchors.fill: parent
        model: nameModel
        delegate: nameDelegate
        clip: true
    }
}
