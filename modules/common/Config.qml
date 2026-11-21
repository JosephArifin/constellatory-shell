pragma Singleton
import QtQuick
import Quickshell

Singleton {
    id: root

    property QtObject options

    options: QtObject {
        property QtObject time
        property QtObject bar

        time: QtObject {
            property string format: "h:mm AP"
            property string shortDateFormat: "dd/MM"
            property string dateFormat: "dddd, MMMM d"
            property bool secondPrecision: false
            property bool twelveHour: true
        }

        bar: QtObject {
            property QtObject workspaces

            workspaces: QtObject {
                property int shown: 5
            }
        }
    }
}
