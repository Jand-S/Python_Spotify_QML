import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button{
    id: btnLeftMenu
    text: qsTr("Left Menu Text")

    // CUSTOM PROPERTIES
    property url btnIconSourceDefault: "../images/svg/profile.svg"
    property color backgroundcolor: "#121212"
    property color btnColorDefault: "#fff"
    property color btnColorMouseOver: "#ffffff"
    property color btnColorClicked: "#929292"
    property int iconWidth: 25
    property int iconHeight: 25
    property bool isUnder: false

    QtObject{
        id: internal

        // MOUSE OVER AND CLICK CHANGE COLOR
        property var dynamicColor: if(btnLeftMenu.down){
                                       btnLeftMenu.down ? btnColorClicked : btnColorDefault
                                   } else {
                                       btnLeftMenu.hovered ? btnColorMouseOver : btnColorDefault
                                   }

    }

    implicitWidth: 150
    implicitHeight: 25

    background: Rectangle{
        id: bgBtn
        color: backgroundcolor

    }

    contentItem: Item{
        anchors.fill: parent
        id: content
        width: 150
        height: 25
        Image {
            id: iconBtn
            source: btnIconSourceDefault
            sourceSize.width: iconWidth
            sourceSize.height: iconHeight
            anchors.leftMargin: 5
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.verticalCenterOffset: 0
            width: iconWidth
            height: iconHeight
            fillMode: Image.PreserveAspectFit
            visible: false
            antialiasing: true
        }

        ColorOverlay{
            anchors.fill: iconBtn
            source: iconBtn
            anchors.verticalCenterOffset: 0
            anchors.rightMargin: 0
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.topMargin: 0
            anchors.verticalCenter: parent.verticalCenter
            antialiasing: true
            width: iconWidth
            height: iconHeight
            color: internal.dynamicColor
        }

        Text{
            color: internal.dynamicColor
            text: btnLeftMenu.text
            font: btnLeftMenu.font
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: iconBtn.right


            anchors.leftMargin: 5
        }
    }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:3;height:40;width:195}
}
##^##*/
