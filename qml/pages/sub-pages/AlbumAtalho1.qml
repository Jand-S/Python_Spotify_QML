import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.5
import "../../controls"

Item {
    id: albumItem
    width: 818
    height: 309

    property bool hoverDisabled: false

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
            source: "../../images/albuns/AnimeNow.png"
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
            source: "../../images/albuns/DailyMix4.png"
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
            source: "../../images/albuns/DailyMix5.png"
            fillMode: Image.PreserveAspectFit
            anchors.leftMargin: 22
            opacity: album3.containsMouse ? 0.5 : 1;

            MouseArea {
                id: album3
                enabled: !img1AlbumAtalho3.hoverDisabled
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
            source: "../../images/albuns/MixAnos2010.png"
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
            id: labelAnimeNowDescription
            x: 0
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
            id: labelAnimeSeg
            x: 0
            y: 277
            color: "#b3b3b3"
            text: qsTr("353.641 SEGUIDORES")
            font.weight: Font.DemiBold
            font.family: "Arial"
            font.pointSize: 10
        }

        Label {
            id: labelDailyDescription
            x: 210
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
            id: labelNicoDescription
            x: 420
            y: 217
            width: 188
            height: 60
            color: "#b3b3b3"
            text: qsTr("Nico Collins, AViVA, Hey\nViolet e mais")
            anchors.top: img1AlbumAtalho1.bottom
            font.pointSize: 11
            font.family: "Arial"
            anchors.topMargin: 29
        }

        Label {
            id: labelMiuraDescription
            x: 630
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
            id: labelNome
            x: 630
            y: 269
            color: "#b3b3b3"
            text: qsTr("FEITO PARA\nJANDSON-MACEDO")
            font.pointSize: 10
            font.family: "Arial"
            font.weight: Font.DemiBold
        }

        Label {
            id: animeNow
            x: 0
            y: 194
            width: 188
            height: 20
            color: "#ffffff"
            text: qsTr("Anime Now")
            font.underline: mouseArea.containsMouse ? true : false;
            font.family: "Arial"
            font.pointSize: 11
            font.bold: true
            MouseArea {
                id: mouseArea
                anchors.fill: parent
                anchors.rightMargin: 97
                hoverEnabled: true;
            }

        }

        Label {
            id: labelDailyMix4
            x: 210
            y: 194
            width: 188
            height: 20
            color: "#ffffff"
            text: qsTr("Daily Mix 4")
            font.bold: true
            font.pointSize: 11
            font.family: "Arial"
            font.underline: mouseArea1.containsMouse ? true : false
            MouseArea {
                id: mouseArea1
                anchors.fill: parent
                anchors.rightMargin: 101
                hoverEnabled: true;
            }

        }

        Label {
            id: labelDailyMix5
            x: 420
            y: 194
            width: 188
            height: 20
            color: "#ffffff"
            text: qsTr("Daily Mix 5")
            font.bold: true
            font.pointSize: 11
            font.family: "Arial"
            font.underline: mouseArea2.containsMouse ? true : false
            MouseArea {
                id: mouseArea2
                anchors.fill: parent
                anchors.rightMargin: 96
                hoverEnabled: true;
            }
        }

        Label {
            id: labelMix2010
            x: 630
            y: 194
            width: 188
            height: 20
            color: "#ffffff"
            text: qsTr("Mix anos 2010")
            font.bold: true
            font.pointSize: 11
            font.family: "Arial"
            font.underline: mouseArea3.containsMouse ? true : false
            MouseArea {
                id: mouseArea3
                anchors.fill: parent
                anchors.rightMargin: 75
                hoverEnabled: true;
            }
        }
    }

}
