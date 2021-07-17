import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15


Item {
    width: 880
    height: 400
    clip: true
    Rectangle {
        id: bg
        color: "#00000000"
        anchors.fill: parent
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0


        ScrollView {
            id: scrollView
            visible: true
            anchors.fill: parent
            clip: true
            contentWidth: -1

            ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
            ScrollBar.vertical.policy: ScrollBar.AlwaysOn

            ListView {
                id: listView
                anchors.fill: parent

                model: ListModel {
                    ListElement {
                        element: "PlaceholderAlbum.qml"

                    }
                    ListElement {
                        element: "PlaceholderAlbum.qml"
                    }
                    ListElement {
                        element: "PlaceholderAlbum.qml"
                    }
                    ListElement {
                        element: "PlaceholderAlbum.qml"
                    }
                }
                delegate: Item {
                    width: 895
                    height: 375
                    Column {
                        leftPadding: 30
                        topPadding: 30
                        Rectangle {
                            width: 750
                            height: 350
                            color: "#282828"

                            Loader{
                                y: 0
                                height: 350
                                width: 818
                                source: element


                            }
                        }



                    }
                }
            }

        }

    }

}


