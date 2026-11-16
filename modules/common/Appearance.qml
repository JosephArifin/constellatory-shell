pragma Singleton
import QtQuick
import Quickshell

Singleton {
    id: root

    property QtObject sizes
    property QtObject m3colors
    property QtObject colors
    property QtObject font
    property QtObject rounding
    property QtObject animation

    m3colors: QtObject {
        property bool darkmode: true
        property color m3background: "#141313"
        property color m3onBackground: "#e6e1e1"
        property color m3surface: "#141313"
        property color m3surfaceDim: "#141313"
        property color m3surfaceBright: "#3a3939"
        property color m3surfaceContainerLowest: "#0f0e0e"
        property color m3surfaceContainerLow: "#1c1b1c"
        property color m3surfaceContainer: "#201f20"
        property color m3surfaceContainerHigh: "#2b2a2a"
        property color m3surfaceContainerHighest: "#363435"
        property color m3onSurface: "#e6e1e1"
        property color m3surfaceVariant: "#49464a"
        property color m3onSurfaceVariant: "#cbc5ca"
        property color m3inverseSurface: "#e6e1e1"
        property color m3inverseOnSurface: "#313030"
        property color m3outline: "#948f94"
        property color m3outlineVariant: "#49464a"
        property color m3shadow: "#000000"
        property color m3scrim: "#000000"
        property color m3surfaceTint: "#cbc4cb"
        property color m3primary: "#cbc4cb"
        property color m3onPrimary: "#322f34"
        property color m3primaryContainer: "#2d2a2f"
        property color m3onPrimaryContainer: "#bcb6bc"
        property color m3inversePrimary: "#615d63"
        property color m3secondary: "#cac5c8"
        property color m3onSecondary: "#323032"
        property color m3secondaryContainer: "#4d4b4d"
        property color m3onSecondaryContainer: "#ece6e9"
        property color m3tertiary: "#d1c3c6"
        property color m3onTertiary: "#372e30"
        property color m3tertiaryContainer: "#31292b"
        property color m3onTertiaryContainer: "#c1b4b7"
        property color m3error: "#ffb4ab"
        property color m3onError: "#690005"
        property color m3errorContainer: "#93000a"
        property color m3onErrorContainer: "#ffdad6"
        property color m3primaryFixed: "#e7e0e7"
        property color m3primaryFixedDim: "#cbc4cb"
        property color m3onPrimaryFixed: "#1d1b1f"
        property color m3onPrimaryFixedVariant: "#49454b"
        property color m3secondaryFixed: "#e6e1e4"
        property color m3secondaryFixedDim: "#cac5c8"
        property color m3onSecondaryFixed: "#1d1b1d"
        property color m3onSecondaryFixedVariant: "#484648"
        property color m3tertiaryFixed: "#eddfe1"
        property color m3tertiaryFixedDim: "#d1c3c6"
        property color m3onTertiaryFixed: "#211a1c"
        property color m3onTertiaryFixedVariant: "#4e4447"
        property color m3success: "#B5CCBA"
        property color m3onSuccess: "#213528"
        property color m3successContainer: "#374B3E"
        property color m3onSuccessContainer: "#D1E9D6"
        property color term0: "#EDE4E4"
        property color term1: "#B52755"
        property color term2: "#A97363"
        property color term3: "#AF535D"
        property color term4: "#A67F7C"
        property color term5: "#B2416B"
        property color term6: "#8D76AD"
        property color term7: "#272022"
        property color term8: "#0E0D0D"
        property color term9: "#B52755"
        property color term10: "#A97363"
        property color term11: "#AF535D"
        property color term12: "#A67F7C"
        property color term13: "#B2416B"
        property color term14: "#8D76AD"
        property color term15: "#221A1A"
    }

    colors: QtObject {
        property color colPrimary: m3colors.m3primary
        property color colOnPrimary: m3colors.m3onPrimary
        property color colPrimaryContainer: m3colors.m3primaryContainer
        property color colOnPrimaryContainer: m3colors.m3onPrimaryContainer
        property color colSecondary: m3colors.m3secondary
        property color colOnSecondary: m3colors.m3onSecondary
        property color colSecondaryContainer: m3colors.m3secondaryContainer
        property color colOnSecondaryContainer: m3colors.m3onSecondaryContainer
        property color colTertiary: m3colors.m3tertiary
        property color colOnTertiary: m3colors.m3onTertiary
        property color colTertiaryContainer: m3colors.m3tertiaryContainer
        property color colOnTertiaryContainer: m3colors.m3onTertiaryContainer
        property color colSurface: m3colors.m3surface
        property color colSurfaceDim: m3colors.m3surfaceDim
        property color colSurfaceBright: m3colors.m3surfaceBright
        property color colOnSurface: m3colors.m3onSurface
        property color colSurfaceVariant: m3colors.m3surfaceVariant
        property color colOnSurfaceVariant: m3colors.m3onSurfaceVariant
        property color colOutline: m3colors.m3outline
        property color colOutlineVariant: m3colors.m3outlineVariant
        property color colLayer0: m3colors.m3surfaceContainerLowest
        property color colLayer1: m3colors.m3surfaceContainerLow
        property color colLayer2: m3colors.m3surfaceContainer
        property color colOnLayer1: m3colors.m3onSurface
        property color colOnLayer1Inactive: m3colors.m3outline
        property color colError: m3colors.m3error
        property color colOnError: m3colors.m3onError
    }

    rounding: QtObject {
        property int small: 8
        property int normal: 12
        property int large: 16
        property int windowRounding: 18
        property int full: 9999
    }

    font: QtObject {
        property QtObject family

        family: QtObject {
            property string main: "sans-serif"
            property string numbers: "sans-serif"
        }

        property QtObject pixelSize

        pixelSize: QtObject {
            property int smallest: 10
            property int smaller: 12
            property int small: 14
            property int normal: 16
            property int large: 18
            property int larger: 20
            property int huge: 24
        }
    }

    sizes: QtObject {
        property real barHeight: 500
        property real barWidth: 70
        property real hyprlandGapsOut: 8
    }
}
