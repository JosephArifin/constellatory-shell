import Quickshell
import Quickshell.Hyprland
import QtQuick
import qs.modules.common
import qs.modules.common.widgets
import qs.modules.bar

Item {
    id: root

    WorkspacesModel {
        id: wsModel
    }

    Column {
        Repeater {
            model: Config.options.bar.workspaces.shown

            Pill {
                required property int index
                readonly property int wsId: (wsModel.group * wsModel.shownCount) + index + 1
                readonly property bool active: wsId === wsModel.activeWorkspace

                width: active ? 24 : 12   // expand active dot
                height: 12
                color: active ? Appearance.colors.colPrimary : Appearance.colors.colOutline
            }
        }
    }
}
