import QtQuick
import QtQuick.Layouts
import Quickshell
import qs.modules.bar
import qs.modules.common
import qs.services

Item {
    id: root

    // Background panel
    Rectangle {
        id: barBackground

        anchors.fill: parent
        color: Appearance.colors.colLayer0
        radius: Appearance.rounding.windowRounding
        border.width: 1
        border.color: Appearance.colors.colOutlineVariant
    }

    // Top section
    Item {
        id: topSection

        anchors {
            top: parent.top
            left: parent.left
            right: parent.right
            topMargin: 16
        }
    }

    // Middle section
    Item {
        id: middleSection

        anchors.centerIn: parent
        implicitWidth: clockWidget.implicitWidth
        implicitHeight: clockWidget.implicitHeight

        ClockWidget {
            id: clockWidget

            anchors.centerIn: parent
            vertical: true
        }
    }

    // Bottom section
    Item {
        id: bottomSection

        anchors {
            bottom: parent.bottom
            left: parent.left
            right: parent.right
            bottomMargin: 16
        }
    }
}
