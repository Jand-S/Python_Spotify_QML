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
            source: "../../images/albuns/DailyMix4.png"
            anchors.leftMargin: 0
            fillMode: Image.PreserveAspectFit
            opacity: album1.containsMouse ? 0.5 : 1;
            MouseArea {
                id:album1
                enabled: !img1AlbumAtalho1.hoverDisabled
                hoverEnabled: true;
                cursorShape: Qt.PointingHandCursor;
                anchors.fill: parent
                onClicked: console.log('clicked')

            }
        }

        Image {
            id: img1AlbumAtalho2
            y: 0
            width: 188
            height: 188
            anchors.left: img1AlbumAtalho1.right
            source: "../../images/albuns/AnimeNow.png"
            fillMode: Image.PreserveAspectFit
            anchors.leftMargin: 22
            opacity: album2.containsMouse ? 0.5 : 1;
            MouseArea {
                id:album2
                enabled: !img1AlbumAtalho2.hoverDisabled
                hoverEnabled: true;
                cursorShape: Qt.PointingHandCursor;
                anchors.fill: parent
                onClicked: console.log('clicked')

            }

        }

        Image {
            id: img1AlbumAtalho3
            x: 416
            y: 0
            width: 188
            height: 188
            anchors.left: img1AlbumAtalho2.right
            source: "../../images/albuns/MixAnos2010.png"
            fillMode: Image.PreserveAspectFit
            anchors.leftMargin: 22
            opacity: album3.containsMouse ? 0.5 : 1;
            MouseArea {
                id:album3
                enabled: !img1AlbumAtalho1.hoverDisabled
                hoverEnabled: true;
                cursorShape: Qt.PointingHandCursor;
                anchors.fill: parent
                onClicked: console.log('clicked')

            }
        }

        Image {
            id: img1AlbumAtalho4
            x: 707
            y: 0
            width: 188
            height: 188
            anchors.left: img1AlbumAtalho3.right
            source: "../../images/albuns/DailyMix5.png"
            fillMode: Image.PreserveAspectFit
            anchors.leftMargin: 22
            opacity: album4.containsMouse ? 0.5 : 1;
            MouseArea {
                id:album4
                enabled: !img1AlbumAtalho4.hoverDisabled
                hoverEnabled: true;
                cursorShape: Qt.PointingHandCursor;
                anchors.fill: parent
                onClicked: console.log('clicked')

            }
        }

        Label {
            id: label
            x: 210
            width: 188
            height: 60
            color: "#b3b3b3"
            text: qsTr("Anime hits for all Anime\nfans! 最新アニメシーンの話\n題曲をまとめてお届け！...")
            anchors.top: img1AlbumAtalho1.bottom
            font.pointSize: 11
            font.family: "Arial"
            anchors.topMargin: 29
        }

        Label {
            id: label1
            x: 210
            y: 277
            color: "#b3b3b3"
            text: qsTr("353.641 SEGUIDORES")
            font.weight: Font.DemiBold
            font.family: "Arial"
            font.pointSize: 10
        }

        Label {
            id: label2
            x: 0
            y: 217
            width: 188
            height: 60
            color: "#b3b3b3"
            text: qsTr("Heiakim, Vapi, Snail's House\ne mais")
            anchors.top: img1AlbumAtalho1.bottom
            font.pointSize: 11
            font.family: "Arial"
            anchors.topMargin: 29
        }

        Label {
            id: label3
            x: 630
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
            x: 420
            y: 217
            width: 188
            height: 60
            color: "#b3b3b3"
            text: qsTr("Miura Jam, LiSA, AViVA e\nmais")
            anchors.top: img1AlbumAtalho1.bottom
            font.pointSize: 11
            font.family: "Arial"
            anchors.topMargin: 29
        }

        Label {
            id: label5
            x: 630
            y: 269
            color: "#b3b3b3"
            text: qsTr("FEITO PARA\nJANDSON-MACEDO")
            font.pointSize: 10
            font.family: "Arial"
            font.weight: Font.DemiBold
        }
    }

}
