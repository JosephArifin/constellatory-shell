import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.modules.common
import qs.services

Item {
    id: root

    implicitWidth: Appearance.sizes.barWidth
    implicitHeight: Appearance.sizes.barHeight

    Column {
        id: colLayout

        visible: root.vertical
        anchors.centerIn: parent
        spacing: -4
        Repeater {
            model: DateTime.time.split(/[: ]/)

            Text {
                required property string modelData

                anchors.horizontalCenter: parent.horizontalCenter
                font.family: Appearance.font.family.numbers
                font.pixelSize: modelData.match(/am|pm/i) ? Appearance.font.pixelSize.small : Appearance.font.pixelSize.larger
                font.weight: modelData.match(/am|pm/i) ? Font.Normal : Font.DemiBold
                color: Appearance.colors.colPrimary
                text: modelData.match(/am|pm/i) ? modelData.toLowerCase() : modelData.padStart(2, "0")
            }
        }
    }
}
