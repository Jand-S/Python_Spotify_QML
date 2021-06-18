import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button{
    id: customButtonMenu
    text: qsTr(txtOnButton)

    // CUSTOM PROPERTIES
    property color btnColorBg: "#00000000"
    property color btnColorDefault: "#e6e6e6"
    property color btnColorMouseOver: "#ffffff"
    property color btnColorClicked: "#535353"
    property string txtOnButton: "Change Name"
    width: 180

    QtObject{
        id: internal

        // MOUSE OVER AND CLICK CHANGE COLOR
        property var dynamicColor: if(customButtonMenu.down){
                                       customButtonMenu.down ? btnColorClicked : btnColorDefault
                                   } else {
                                       customButtonMenu.hovered ? btnColorMouseOver : btnColorDefault

                                   }

    }

    implicitWidth: 200
    implicitHeight: 40

    background: Rectangle{
        id: bgBtn
        color: btnColorBg
        radius: 25
        border.width: 1
        border.color: internal.dynamicColor

        Rectangle{
            anchors{
                top: parent.top
                left: parent.left
                bottom: parent.bottom
            }
        }

    }

    contentItem: Item{
        anchors.fill: parent
        id: content
        width: 180

        Text{
            color: internal.dynamicColor
            text: txtOnButton
            anchors.verticalCenter: parent.verticalCenter
            anchors.top: parent.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font: customButtonMenu.font
        }
    }
}
/*##^##
Designer {
    D{i:0;formeditorZoom:0.9;height:40;width:195}
}
##^##*/
