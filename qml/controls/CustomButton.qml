import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

Button{
    id: customButtonMenu
    text: qsTr(txtOnButton)

    // CUSTOM PROPERTIES
    property color btnColorDefault: "#4891d9"
    property color btnColorMouseOver: "#55AAFF"
    property color btnColorClicked: "#3F7EBD"
    property string txtOnButton: "Change Name"

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
        color: internal.dynamicColor
        radius: 10

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

        Text{
            color: "#ffffff"
            text: txtOnButton
            anchors.verticalCenter: parent.verticalCenter
            anchors.top: parent.top
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font: btnLeftMenu.font
        }
    }
}
/*##^##
Designer {
    D{i:0;autoSize:true;height:40;width:200}
}
##^##*/
