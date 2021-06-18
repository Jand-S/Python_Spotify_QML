import QtQuick 2.15
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.15

TextField {

    property url btnIconSource: "../images/svg/lupa.svg"
    padding: 0
    bottomPadding: 0
    rightPadding: 0
    leftPadding: 25
    topPadding: 0

    id: control
    placeholderText: qsTr("Buscar")

    background: Rectangle {
        implicitWidth: 175
        implicitHeight: 25
        radius: 25
        color: "#ffffff"
        border.color: "#121212"
    }

    Image {
        id: iconBtn
        x: 13
        source: btnIconSource
        anchors.verticalCenterOffset: 0
        anchors.horizontalCenterOffset: -72
        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter
        height: 15
        width: 15
        fillMode: Image.PreserveAspectFit
        antialiasing: true
        visible: false

    }

    ColorOverlay{
        anchors.fill: iconBtn
        source: iconBtn
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        color: "#a6a6a6"
        antialiasing: false
    }
}

/*##^##
Designer {
    D{i:0;formeditorZoom:4}
}
##^##*/
