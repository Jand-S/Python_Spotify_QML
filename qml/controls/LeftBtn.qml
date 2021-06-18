import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button{
    id: btnLeftMenu
    text: qsTr("Left Menu Text")

    // CUSTOM PROPERTIES
    property url btnIconSourceDefault: "../images/svg/home.svg"
    property url btnIconSourceActive: "../images/svg/homet.svg"
    property color backgroundcolor: "#121212"
    property color btnColorDefault: "#1c1d20"
    property color btnColorActive: "#ffffff"
    property color btnColorMouseOver: "#ffffff"
    property color btnColorClicked: "#929292"
    property int iconWidth: 18
    property int iconHeight: 18
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
            height: 26
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
        Image {
            id: iconBtn
            source: if (isActiveMenu){
                        btnIconSourceDefault
                    }else{
                        btnIconSourceActive
                    }
            sourceSize.height: 21

            anchors.leftMargin: 26
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.verticalCenterOffset: 0
            sourceSize.width: iconWidth
            width: iconWidth
            height: 18
            fillMode: Image.PreserveAspectFit
            visible: false
            antialiasing: true
        }

        ColorOverlay{
            anchors.fill: iconBtn
            source: iconBtn
            anchors.verticalCenterOffset: 0
            anchors.rightMargin: -1
            anchors.bottomMargin: 0
            anchors.leftMargin: 1
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
            anchors.leftMargin: 20
        }
    }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:6;height:40;width:195}
}
##^##*/
