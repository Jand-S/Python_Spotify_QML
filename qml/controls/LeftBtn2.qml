import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button{
    id: btnLeftMenu
    text: qsTr("Left Menu Text")

    // CUSTOM PROPERTIES
    property color backgroundcolor: "#121212"
    property color btnColorDefault: "#1c1d20"
    property color btnColorActive: "#ffffff"
    property color btnColorMouseOver: "#ffffff"
    property color btnColorClicked: "#929292"
    property color activeMenuColor: "#55aaff"
    property bool isActiveMenu: true

    QtObject{
        id: internal

        // MOUSE OVER AND CLICK CHANGE COLOR
        property var dynamicColor: if(btnLeftMenu.down){
                                       btnLeftMenu.down ? btnColorClicked : btnColorDefault
                                   } else {
                                       btnLeftMenu.hovered ? btnColorMouseOver : btnColorDefault
                                   }

    }

    implicitWidth: 200
    implicitHeight: 25

    background: Rectangle{
        id: bgBtn
        color: backgroundcolor
        Rectangle{
            color: activeMenuColor
            anchors{
                left: parent.left
            }
            width: 4
            height: 18
            visible: isActiveMenu
            anchors.verticalCenter: parent.verticalCenter
            anchors.leftMargin: 0
        }

    }

    contentItem: Item{
        anchors.fill: parent
        id: content
        width: 200
        height: 25

        Text{
            color: internal.dynamicColor
            text: btnLeftMenu.text
            font: btnLeftMenu.font
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.verticalCenterOffset: 0
            anchors.leftMargin: 25
        }
    }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:10;height:40;width:195}D{i:5}
}
##^##*/
