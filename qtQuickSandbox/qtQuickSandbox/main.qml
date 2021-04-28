import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Timeline 1.0

Window {
    id: window
    width: 640
    height: 480
    visible: true
    title: qsTr("Jitters Coffee")

    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: window.height
        width: window.width

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: window.height - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }

    Text {
        id: welcome
        x: 144
        y: 37
        width: 353
        height: 42
        text: qsTr("Welcome to Jitters Coffee!")
        font.pixelSize: 29
        horizontalAlignment: Text.AlignHCenter
        minimumPixelSize: 12
        minimumPointSize: 12
    }

    Text {
        id: placeholder
        x: 181
        y: 330
        width: 279
        height: 32
        text: qsTr("Image of the built coffee here")
        font.pixelSize: 21
        horizontalAlignment: Text.AlignHCenter
        minimumPixelSize: 12
    }

    Grid {
        id: choiceGrid
        x: 69
        y: 169
        width: 535
        height: 118
        transformOrigin: Item.Center
        spacing: 12
        rows: 2
        columns: 3

        Text {
            id: coffeeType
            width: 110
            height: 26
            text: qsTr("Coffee Type")
            font.pixelSize: 21
        }

        Text {
            id: coffeeSize
            text: qsTr("Coffee Size")
            font.pixelSize: 21
            horizontalAlignment: Text.AlignHCenter
        }

        Text {
            id: foam
            text: qsTr("Foam")
            font.pixelSize: 12
        }

        Text {
            id: expresso
            text: qsTr("Expresso Shots")
            font.pixelSize: 12
        }

        Text {
            id: hotOrIced
            text: qsTr("hot or iced")
            font.pixelSize: 12
        }

        Text {
            id: blends
            text: qsTr("Blends")
            font.pixelSize: 12
        }
    }

    Timeline {
        id: timeline
        animations: [
            TimelineAnimation {
                id: timelineAnimation
                running: true
                duration: 1000
                loops: 1
                to: 1000
                from: 0
            }
        ]
        startFrame: 0
        endFrame: 1000
        enabled: true
    }
}
