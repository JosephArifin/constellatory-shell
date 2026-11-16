import QtQuick
import Quickshell
import qs.modules.common
pragma Singleton

Singleton {
    id: root

    property var clock

    clock: SystemClock {
        id: clock

        precision: (Config.options && Config.options.time && Config.options.time.secondPrecision) ? SystemClock.Seconds : SystemClock.Minutes
    }

    readonly property date dateObj: clock.date
    readonly property string time: Qt.locale().toString(clock.date, (Config.options && Config.options.time) ? Config.options.time.format : "h:mm AP")
    readonly property string shortDate: Qt.locale().toString(clock.date, (Config.options && Config.options.time) ? Config.options.time.shortDateFormat : "dd/MM")
    readonly property string longDate: Qt.locale().toString(clock.date, (Config.options && Config.options.time) ? Config.options.time.dateFormat : "dddd, MMMM d")
    readonly property string date: Qt.locale().toString(clock.date, "yyyy-MM-dd")
    readonly property string hours: Qt.locale().toString(clock.date, (Config.options && Config.options.time && Config.options.time.twelveHour) ? "hh" : "HH")
    readonly property string minutes: Qt.locale().toString(clock.date, "mm")
    readonly property string amPm: Qt.locale().toString(clock.date, "AP")
}
