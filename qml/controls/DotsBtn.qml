import QtQuick 2.15
import QtGraphicalEffects 1.15
import QtQuick.Controls 2.15


Button{
    id: btnTopBar

    property url btnIconSource: "../images/svg/dots.svg"
    property color btnColorDefault: "#171721"
    property color btnMouseOver: "#323247"
    property color btnColorClicked: "#00a1f1"
    property color btnbackground: "#ffffff"
    opacity: 1
    visible: true
    QtObject{
        id: internal

        property var dynamicColor: if(btnTopBar.down){
                                       btnTopBar.down ? btnColorClicked: btnColorDefault
                                   } else{
                                       btnTopBar.hovered ? btnMouseOver : btnColorDefault
                                   }
    }

    implicitWidth: 35
    implicitHeight: 35
    background: Rectangle{
        id: bgBtn
        color: btnbackground


        Image {
            id: iconBtn
            source: btnIconSource
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            height: 16
            width: 18
            fillMode: Image.Stretch
            antialiasing: true


        }

        ColorOverlay{
            x: 7
            width: 16
            height: 18
            anchors.fill: iconBtn
            source: iconBtn
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            color: internal.dynamicColor
            antialiasing: false
        }


    }

}

/*##^##
Designer {
    D{i:0;formeditorZoom:4;height:29;width:29}
}
##^##*/
