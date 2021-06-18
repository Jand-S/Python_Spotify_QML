import QtQuick 2.15
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15


Button{
    id: btnToggle

    property url btnIconSource: "../images/svg_images/menu_icon.svg"
    property color btnColorDefault: "#171721"
    property color btnMouseOver: "#323247"
    property color btnColorClicked: "#00a1f1"
    QtObject{
        id: internal

        property var dynamicColor: if(btnToggle.down){
                                       btnToggle.down ? btnColorClicked: btnColorDefault
                                   } else {
                                       btnToggle.hovered ? btnMouseOver : btnColorDefault
                                   }
    }

    implicitWidth: 70
    implicitHeight: 60
    background: Rectangle{
        id: bgBtn
        color: internal.dynamicColor


        Image {
            id: iconBtn
            source: btnIconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 25
            width: 25
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
