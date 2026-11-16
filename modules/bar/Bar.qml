import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import Quickshell.Wayland
import qs.modules.bar
import qs.modules.common

Variants {
    id: bar

    model: Quickshell.screens

    PanelWindow {
        id: panelWindow

        required property var modelData

        screen: modelData
        color: "transparent"
        implicitWidth: Appearance.sizes.barWidth
        implicitHeight: Appearance.sizes.barHeight

        anchors {
            left: true
        }

        margins {
            left: Appearance.sizes.hyprlandGapsOut
        }

        BarContent {
            anchors.fill: parent
        }
    }
}
