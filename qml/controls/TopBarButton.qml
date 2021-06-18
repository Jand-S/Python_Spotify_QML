import QtQuick 2.15
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15


Button{
    id: btnTopBar

    property url btnIconSource: "../images/svg_images/minimize_icon.svg"
    property color btnColorDefault: "#171721"
    property color btnMouseOver: "#323247"
    property color btnColorClicked: "#00a1f1"
    QtObject{
        id: internal

        property var dynamicColor: if(btnTopBar.down){
                                       btnTopBar.down ? btnColorClicked: btnColorDefault
                                   } else {
                                       btnTopBar.hovered ? btnMouseOver : btnColorDefault
                                   }
    }

    implicitWidth: 35
    implicitHeight: 35
    background: Rectangle{
        id: bgBtn
        color: internal.dynamicColor


        Image {
            id: iconBtn
            source: btnIconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 16
            width: 16
            fillMode: Image.PreserveAspectFit

        }

        ColorOverlay{
            anchors.fill: iconBtn
            source: iconBtn
            color: "#ffffff"
            antialiasing: false
        }


    }

}
