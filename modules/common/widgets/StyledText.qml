import QtQuick
import qs.modules.common

Text {
    id: root

    renderType: Text.NativeRendering
    verticalAlignment: Text.AlignVCenter
    color: Appearance.colors ? Appearance.colors.colOnSurface : Appearance.m3colors.m3onSurface

    font {
        hintingPreference: Font.PreferDefaultHinting
        family: Appearance.font ? Appearance.font.family.main : "sans-serif"
        pixelSize: Appearance.font ? Appearance.font.pixelSize.normal : 14
    }

}
