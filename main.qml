import QtQuick
import QtQuick.Controls

ApplicationWindow {
 width: 540
    height: 960
    visible: true

     Page {
            anchors.fill: parent
            header: Label {
                padding: 10
                text: qsTr("Contacts")
                font.pixelSize: 20
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
            }
        }
    ListView {
                id: listView
                anchors.fill: parent
                topMargin: 48
                leftMargin: 48
                bottomMargin: 48
                rightMargin: 48
                spacing: 20
                model: ["ilon mask", "pushkin alex", "steve jobs"]
                delegate: ItemDelegate {
                    text: modelData
                    width: listView.width - listView.leftMargin - listView.rightMargin
                    height: 64
                    leftPadding: 64 + 32

                    Image {
                        id: avatar
                        source: "images/" + modelData.replace(" ", "_") + ".jpeg"
                        height: 64
                        width: 64
                    }
                }
            }
}