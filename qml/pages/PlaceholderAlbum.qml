import QtQuick 2.0
import QtQuick.Controls 2.15
import "../controls"

Item {
    id: win
    width: 895
    height: 380

    property int pagesld: 0
    property var subpages: ["AlbumAtalho1.qml", "AlbumAtalho2.qml", "AlbumAtalho3.qml"]
    property string albumname: "Atalhos"


    Rectangle {
        id: bg
        width: 895
        height: 350
        color: "#282828"
        anchors.fill: parent
        clip: true

        Rectangle {
            id: topMenu
            height: 30
            color: "#181818"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0

            Label {
                id: titleLabel
                x: 0
                y: 4
                color: "#ffffff"
                text: qsTr(albumname)
                font.bold: true
                font.pointSize: 14
                font.family: "Arial"
            }
        }

        Rectangle {
            id: contentAlbuns
            color: "#181818"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: topMenu.bottom
            anchors.bottom: parent.bottom
            anchors.topMargin: 1

            Rectangle {
                id: albuns
                color: "#00000000"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.topMargin: 20
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                StackView {
                    id: stackAlbuns
                    anchors.fill: parent
                    anchors.rightMargin: 0

                    initialItem: Qt.resolvedUrl("sub-pages/AlbumAtalho1.qml")
                }
            }
        }
    }



    AlbumBtn {
        id: back
        x: 756
        y: 0
        width: 29
        height: 29
        text: qsTr("")
        anchors.right: next.left
        btnbackground: "#00000000"
        btnMouseOver: "#ffffff"
        btnColorClicked: "#939393"
        btnColorDefault: if (pagesld > 0){
                             "#a6a6a6"
                         }else{
                             "#2f2f2f"
                         }

        enabled: if (pagesld > 0){
                     true
                 }else{
                     false
                 }

        anchors.rightMargin: 5
        onClicked: if(active){
                       pagesld = pagesld - 1
                       stackAlbuns.replace(Qt.resolvedUrl("sub-pages/" + subpages[pagesld]), StackView.PopTransition)
                   }
    }

    AlbumBtn {
        id: next
        x: 866
        y: 0
        width: 29
        height: 29
        text: qsTr("")
        anchors.right: parent.right
        btnIconSource: "../images/svg/next.svg"
        btnbackground: "#00000000"
        btnMouseOver: "#ffffff"
        btnColorClicked: "#939393"

        btnColorDefault: if (pagesld < 2){
                             "#a6a6a6"
                         }else{
                             "#2f2f2f"
                         }

        enabled: if (pagesld < 2){
                     true
                 }else{
                     false
                 }
        anchors.rightMargin: 0
        onClicked: if(active){
                       pagesld = pagesld + 1
                       stackAlbuns.replace(Qt.resolvedUrl("sub-pages/" + subpages[pagesld]), StackView.PushTransition)
                   }
    }

}


