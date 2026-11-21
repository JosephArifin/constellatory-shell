import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import qs.modules.bar
import qs.modules.common
import qs.modules.common.widgets
import qs.services

Item {
    id: root

    // Background panel
    Pill {
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

        Workspaces {
            id: workspaces
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
