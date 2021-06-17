import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15
import "controls"



Window {
    width: 1110
    height: 728
    visible: true
    color: "#00000000"
    title: qsTr("Spotify")
    id: mainWindow

    property int isActiveMenuN: 0
    property int menuSwitch: 0

    flags: Qt.Window | Qt.FramelessWindowHint

    function desactivemenu (){
        for (var i = 0; i < 12; i++){
            console.log(i)
        }
    }

    Rectangle {
        id: bg
        color: "#181818"
        anchors.fill: parent
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        anchors.topMargin: 10

        Rectangle {
            id: left_menu
            width: 195
            color: "#121212"
            anchors.left: parent.left
            anchors.top: topmenu_header.bottom
            anchors.bottom: parent.bottom
            clip: false
            anchors.leftMargin: 0
            anchors.bottomMargin: 72
            anchors.topMargin: 0

            Rectangle {
                id: menu_principal
                height: 150
                color: "#121212"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: 0


                LeftBtn {
                    id: homeBtn
                    height: 40
                    text: "Início"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    btnIconSourceDefault: "images/svg/placeholder1.svg"
                    btnIconSourceActive: "images/svg/placeholder2.svg"
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    btnColorMouseOver: "#ffffff"
                    btnColorClicked: "#929292"
                    btnColorDefault: if(isActiveMenu){
                                         "#ffffff"
                                     }else{
                                         "#a6a6a6"
                                     }

                    font.pointSize: 11
                    font.family: "Arial"
                    font.bold: true
                    isActiveMenu: true
                    anchors.topMargin: 13
                    activeMenuColor: "#1ed760"

                    onClicked: {
                        if(isActiveMenu){
                            isActiveMenu = false
                        }else{
                            isActiveMenu = true
                        }
                    }
                }

                LeftBtn {
                    id: navegateBtn
                    height: 40
                    text: "Navegar"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: homeBtn.bottom
                    btnIconSourceDefault: "images/svg/placeholder1.svg"
                    btnIconSourceActive: "images/svg/placeholder2.svg"
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    btnColorClicked: "#929292"
                    btnColorDefault: if(isActiveMenu){
                                         "#ffffff"
                                     }else{

                                         "#a6a6a6"
                                     }
                    btnColorMouseOver: "#ffffff"
                    font.pointSize: 11
                    font.family: "Arial"
                    font.bold: true
                    isActiveMenu: false
                    anchors.topMargin: 0
                    activeMenuColor: "#1ed760"

                    onClicked: {
                        if(isActiveMenu){
                            isActiveMenu = false
                        }else{
                            isActiveMenu = true
                        }
                    }


                }

                LeftBtn {
                    id: radioBtn
                    height: 40
                    text: "Rádio"
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: navegateBtn.bottom
                    iconWidth: 18
                    iconHeight: 18
                    btnIconSourceDefault: "images/svg/placeholder1.svg"
                    btnIconSourceActive: "images/svg/placeholder2.svg"
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                    anchors.topMargin: 0
                    btnColorClicked: "#929292"
                    btnColorDefault: if(isActiveMenu){
                                         "#ffffff"
                                     }else{

                                         "#a6a6a6"
                                     }
                    btnColorMouseOver: "#ffffff"
                    font.pointSize: 11
                    font.family: "Arial"
                    font.bold: true
                    isActiveMenu: false
                    activeMenuColor: "#1ed760"

                    onClicked: {
                        if(isActiveMenu){
                            isActiveMenu = false
                        }else{
                            isActiveMenu = true
                        }
                    }
                }
            }

            Rectangle {
                id: menu_biblioteca
                color: "#121212"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: menu_principal.bottom
                anchors.bottom: menu_playlist.top
                anchors.bottomMargin: 0
                anchors.rightMargin: 0
                anchors.topMargin: 0
                anchors.leftMargin: 0

                Label {
                    id: labelbiblioteca
                    height: 15
                    color: "#a6a6a6"
                    text: qsTr("SUA BIBLIOTECA")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: parent.top
                    font.letterSpacing: 1
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 9
                    leftPadding: 25
                    rightPadding: 0
                    padding: 0
                    font.bold: false
                    font.family: "Arial"
                    anchors.topMargin: 8
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0
                }

                LeftBtn2 {
                    id: youBtn
                    height: 32
                    text: qsTr("Feito para você")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: labelbiblioteca.bottom
                    font.letterSpacing: 1
                    font.pointSize: 8
                    font.bold: true
                    activeMenuColor: "#1ed760"
                    btnColorDefault: if(isActiveMenu){
                                         "#ffffff"
                                     }else{

                                         "#a6a6a6"
                                     }
                    isActiveMenu: false
                    anchors.topMargin: 0
                    anchors.rightMargin: 0
                    anchors.leftMargin: 0

                    onClicked: {
                        if(isActiveMenu){
                            isActiveMenu = false
                        }else{
                            isActiveMenu = true
                        }
                    }

                }

                LeftBtn2 {
                    id: recentBtn
                    height: 32
                    text: qsTr("Tocados recente...")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: youBtn.bottom
                    font.letterSpacing: 1
                    anchors.topMargin: 0
                    font.pointSize: 8
                    btnColorDefault: if(isActiveMenu){
                                         "#ffffff"
                                     }else{

                                         "#a6a6a6"
                                     }
                    anchors.rightMargin: 0
                    activeMenuColor: "#1ed760"
                    isActiveMenu: false
                    font.bold: true
                    anchors.leftMargin: 0

                    onClicked: {
                        if(isActiveMenu){
                            isActiveMenu = false
                        }else{
                            isActiveMenu = true
                        }
                    }
                }

                LeftBtn2 {
                    id: favoriteBtn
                    height: 32
                    text: qsTr("Músicas Favoritas")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: recentBtn.bottom
                    font.letterSpacing: 1
                    anchors.topMargin: 0
                    font.pointSize: 8
                    btnColorDefault: if(isActiveMenu){
                                         "#ffffff"
                                     }else{

                                         "#a6a6a6"
                                     }
                    activeMenuColor: "#1ed760"
                    anchors.rightMargin: 0
                    font.bold: true
                    isActiveMenu: false
                    anchors.leftMargin: 0
                    onClicked: {
                        if(isActiveMenu){
                            isActiveMenu = false
                        }else{
                            isActiveMenu = true
                        }
                    }
                }

                LeftBtn2 {
                    id: albunsBtn
                    height: 32
                    text: qsTr("Álbuns")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: favoriteBtn.bottom
                    font.letterSpacing: 1
                    anchors.topMargin: 0
                    font.pointSize: 8
                    btnColorDefault: if(isActiveMenu){
                                         "#ffffff"
                                     }else{

                                         "#a6a6a6"
                                     }
                    anchors.rightMargin: 0
                    activeMenuColor: "#1ed760"
                    isActiveMenu: false
                    font.bold: true
                    anchors.leftMargin: 0
                    onClicked: {
                        if(isActiveMenu){
                            isActiveMenu = false
                        }else{
                            isActiveMenu = true
                        }
                    }
                }

                LeftBtn2 {
                    id: artistsBtn
                    height: 32
                    text: qsTr("Artistas")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: albunsBtn.bottom
                    font.letterSpacing: 1
                    anchors.topMargin: 0
                    font.pointSize: 8
                    btnColorDefault: if(isActiveMenu){
                                         "#ffffff"
                                     }else{

                                         "#a6a6a6"
                                     }
                    activeMenuColor: "#1ed760"
                    anchors.rightMargin: 0
                    font.bold: true
                    isActiveMenu: false
                    anchors.leftMargin: 0
                    onClicked: {
                        if(isActiveMenu){
                            isActiveMenu = false
                        }else{
                            isActiveMenu = true
                        }
                    }
                }

                LeftBtn2 {
                    id: estacaoBtn
                    y: 205
                    height: 32
                    text: qsTr("Estações")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: artistsBtn.bottom
                    font.letterSpacing: 1
                    anchors.topMargin: 0
                    font.pointSize: 8
                    btnColorDefault: if(isActiveMenu){
                                         "#ffffff"
                                     }else{

                                         "#a6a6a6"
                                     }
                    anchors.rightMargin: 0
                    activeMenuColor: "#1ed760"
                    isActiveMenu: false
                    font.bold: true
                    anchors.leftMargin: 0
                    onClicked: {
                        if(isActiveMenu){
                            isActiveMenu = false
                        }else{
                            isActiveMenu = true
                        }
                    }
                }

                LeftBtn2 {
                    id: videoBtn
                    height: 32
                    text: qsTr("Vídeos")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: estacaoBtn.bottom
                    font.letterSpacing: 1
                    anchors.topMargin: 0
                    font.pointSize: 8
                    btnColorDefault: if(isActiveMenu){
                                         "#ffffff"
                                     }else{

                                         "#a6a6a6"
                                     }
                    activeMenuColor: "#1ed760"
                    anchors.rightMargin: 0
                    font.bold: true
                    isActiveMenu: false
                    anchors.leftMargin: 0
                    onClicked: {
                        if(isActiveMenu){
                            isActiveMenu = false
                        }else{
                            isActiveMenu = true
                        }
                    }
                }

                LeftBtn2 {
                    id: podcastBtn
                    height: 32
                    text: qsTr("Podcast")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: videoBtn.bottom
                    font.letterSpacing: 1
                    anchors.topMargin: 0
                    font.pointSize: 8
                    btnColorDefault: if(isActiveMenu){
                                         "#ffffff"
                                     }else{

                                         "#a6a6a6"
                                     }
                    anchors.rightMargin: 0
                    activeMenuColor: "#1ed760"
                    isActiveMenu: false
                    font.bold: true
                    anchors.leftMargin: 0
                    onClicked: {
                        if(isActiveMenu){
                            isActiveMenu = false
                        }else{
                            isActiveMenu = true
                        }
                    }
                }

                Label {
                    id: labelPlaylist
                    height: 15
                    color: "#a6a6a6"
                    text: qsTr("PLAYLISTS")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: podcastBtn.bottom
                    font.letterSpacing: 1
                    verticalAlignment: Text.AlignVCenter
                    anchors.topMargin: 25
                    font.pointSize: 9
                    anchors.rightMargin: 0
                    font.family: "Arial"
                    padding: 0
                    leftPadding: 25
                    rightPadding: 0
                    font.bold: false
                    anchors.leftMargin: 0
                }

                LeftBtn2 {
                    id: curtidaBtn
                    height: 32
                    text: qsTr("Curtidas na Rádio")
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.top: labelPlaylist.bottom
                    font.letterSpacing: 1
                    anchors.topMargin: 0
                    font.pointSize: 8
                    btnColorDefault: if(isActiveMenu){
                                         "#ffffff"
                                     }else{

                                         "#a6a6a6"
                                     }
                    activeMenuColor: "#1ed760"
                    anchors.rightMargin: 0
                    font.bold: true
                    isActiveMenu: false
                    anchors.leftMargin: 0
                    onClicked: {
                        if(isActiveMenu){
                            isActiveMenu = false
                        }else{
                            isActiveMenu = true
                        }
                    }
                }
            }

            Rectangle {
                id: menu_playlist
                y: 521
                height: 64
                color: "#282828"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                clip: false
                anchors.rightMargin: 0
                anchors.leftMargin: 0

                Rectangle {
                    id: overlay_playlist
                    color: "#121212"
                    anchors.fill: parent
                    anchors.topMargin: 1

                    LeftBtn {
                        id: morelistBtn
                        height: 40
                        text: "Nova playlist"
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.left: parent.left
                        anchors.right: parent.right
                        iconWidth: 18
                        iconHeight: 18
                        btnIconSourceDefault: "images/svg/placeholder1.svg"
                        btnIconSourceActive: "images/svg/placeholder2.svg"
                        anchors.leftMargin: 0
                        anchors.rightMargin: 0
                        font.pointSize: 11
                        btnColorMouseOver: "#ffffff"
                        btnColorDefault: if(isActiveMenu){
                                             "#ffffff"
                                         }else{
                                             "#a6a6a6"
                                         }
                        font.family: "Arial"
                        activeMenuColor: "#1ed760"
                        btnColorClicked: "#929292"
                        font.bold: true
                        isActiveMenu: false
                    }
                }
            }


        }


        Rectangle {
            id: content
            color: "#00000000"
            anchors.left: left_menu.right
            anchors.right: parent.right
            anchors.top: topmenu_header.bottom
            anchors.bottom: player_menu.top
            anchors.bottomMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 70
            anchors.leftMargin: 0
            clip: true

            Loader{
                anchors.fill: parent
                source: "pages/HomePage.qml"
            }


        }

        Rectangle {
            id: player_menu
            height: 70
            color: "#121212"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: left_menu.bottom
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            Rectangle {
                id: playermenu_over
                height: 80
                color: "#282828"
                anchors.fill: parent
                anchors.bottomMargin: -2
                clip: false
                anchors.topMargin: 1
            }


        }

        Rectangle {
            id: topmenu_header
            x: 0
            y: 0
            height: 45
            color: "#121212"
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.rightMargin: 0
            anchors.leftMargin: 0

            Rectangle {
                id: top_menu
                height: 70
                color: "#282828"
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.rightMargin: 0
                anchors.leftMargin: 195
                anchors.topMargin: 45

                Rectangle {
                    id: topmenu_over
                    color: "#121212"
                    anchors.fill: parent
                    anchors.bottomMargin: 1
                }
            }

            Rectangle {
                id: btns
                x: 890
                width: 135
                height: 30
                color: "#00000000"
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                clip: false
                anchors.bottomMargin: 14
                anchors.topMargin: 0
                anchors.rightMargin: 0

                TopBarButton {
                    id: minimize
                    width: 45
                    anchors.right: maximize.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    clip: false
                    btnMouseOver: "#535353"
                    btnColorClicked: "#303030"
                    btnColorDefault: "#181818"
                    btnIconSource: "images/svg/minimize_icon.svg"
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    onClicked: mainWindow.showMinimized()
                }

                TopBarButton {
                    id: maximize
                    width: 45
                    anchors.right: close.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    btnColorClicked: "#303030"
                    btnMouseOver: "#535353"
                    btnColorDefault: "#181818"
                    btnIconSource: "images/svg/maximize_icon.svg"
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                }

                TopBarButton {
                    id: close
                    width: 45
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.rightMargin: 0
                    btnColorClicked: "#941320"
                    btnMouseOver: "#cd1a2b"
                    btnColorDefault: "#181818"
                    btnIconSource: "images/svg/close_icon.svg"
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    onClicked: mainWindow.close()
                }
            }


            Rectangle {
                id: btn_backnext
                width: 70
                color: "#00000000"
                anchors.left: parent.left
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.leftMargin: 195
                anchors.bottomMargin: 0
                anchors.topMargin: 0

                AlbumBtn {
                    id: backbtn
                    width: 35
                    anchors.left: parent.left
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    btnMouseOver: "#ffffff"
                    btnColorDefault: "#a6a6a6"
                    btnColorClicked: "#939393"
                    btnbackground: "#00000000"
                    anchors.bottomMargin: 0
                    anchors.topMargin: 0
                    anchors.leftMargin: 0
                }

                AlbumBtn {
                    id: nextbtn
                    x: 51
                    width: 35
                    anchors.left: backbtn.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    btnMouseOver: "#ffffff"
                    btnColorDefault: "#a6a6a6"
                    btnColorClicked: "#939393"
                    btnIconSource: "images/svg/next.svg"
                    btnbackground: "#00000000"
                    anchors.topMargin: 0
                    anchors.bottomMargin: 0
                    anchors.leftMargin: 0
                }
            }

            DragHandler{
                onActiveChanged: if(active){
                                     mainWindow.startSystemMove()
                                 }
            }




        }


    }
    DropShadow{
        anchors.fill: bg
        horizontalOffset: 0
        verticalOffset: 0
        radius:15
        samples: 30
        color: "#80000000"
        source: bg

    }

}








/*##^##
Designer {
    D{i:0;formeditorZoom:0.75}D{i:37;invisible:true}
}
##^##*/
