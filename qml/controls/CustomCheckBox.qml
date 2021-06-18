import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 18
    height: 16

    CheckBox {
        id: control
        y: -6
        width: 30
        text: ""
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.bottomMargin: -6
        anchors.leftMargin: -6
        checked: true

            indicator: Rectangle {
                implicitWidth: 16
                implicitHeight: 16
                x: control.leftPadding
                y: parent.height / 2 - height / 2
                border.color: control.down ? "#ebebeb" : "#202020"
                radius: 3

                Rectangle {
                    width: 6
                    height: 6
                    x: 5
                    y: 5
                    radius: 3
                    color: control.down ? "#ebebeb" : "#202020"
                    visible: control.checked
                }
            }

            contentItem: Text {
                text: control.text
                font: control.font
                opacity: enabled ? 1.0 : 0.3
                color: control.down ? "#ebebeb" : "#202020"
                verticalAlignment: Text.AlignVCenter
                leftPadding: control.indicator.width + control.spacing
            }
    }

}


