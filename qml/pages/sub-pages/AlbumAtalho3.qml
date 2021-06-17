import QtQuick 2.0
import QtQuick.Controls 2.15

Item {
    id: albumItem
    width: 818
    height: 309

    Rectangle {
        id: bgAlbum
        width: 895
        color: "#181818"
        anchors.fill: parent

        Image {
            id: img1AlbumAtalho1
            y: 0
            width: 188
            height: 188
            anchors.left: parent.left
            source: "../../images/albuns/DailyMix5.png"
            anchors.leftMargin: 0
            fillMode: Image.PreserveAspectFit
        }

        Image {
            id: img1AlbumAtalho2
            y: 0
            width: 188
            height: 188
            anchors.left: img1AlbumAtalho1.right
            source: "../../images/albuns/MixAnos2010.png"
            fillMode: Image.PreserveAspectFit
            anchors.leftMargin: 22
        }

        Label {
            id: label3
            x: 0
            y: 217
            width: 188
            height: 60
            color: "#b3b3b3"
            text: qsTr("Nico Collins, AViVA, Hey\nViolet e mais")
            anchors.top: img1AlbumAtalho1.bottom
            font.pointSize: 11
            font.family: "Arial"
            anchors.topMargin: 22
        }

        Label {
            id: label4
            x: 210
            y: 217
            width: 188
            height: 60
            color: "#b3b3b3"
            text: qsTr("Miura Jam, LiSA, AViVA e\nmais")
            anchors.top: img1AlbumAtalho1.bottom
            font.pointSize: 11
            font.family: "Arial"
            anchors.topMargin: 22
        }
    }

}
