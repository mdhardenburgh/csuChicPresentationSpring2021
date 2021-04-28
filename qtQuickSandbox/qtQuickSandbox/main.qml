import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4
import QtQuick.Timeline 1.0
import QtQuick.Controls 2.15
import QtSensors 5.9

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

        // @disable-check M16
        //        states: State {
        //            name: "home"
        //            when: inputPanel.active
        //            PropertyChanges {
        //                target: inputPanel
        //                y: window.height - inputPanel.height
        //            }
        //        }

        states: State
        {
            name: "selectCoffeeType"

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
        y: 236
        width: 279
        height: 32
        text: qsTr("Image of the built coffee here")
        font.pixelSize: 21
        horizontalAlignment: Text.AlignHCenter
        minimumPixelSize: 12
    }

    Grid {
        id: choiceGrid
        x: 38
        y: 94
        width: 565
        height: 130
        transformOrigin: Item.BottomLeft
        spacing: 12
        rows: 2
        columns: 3

        Button {
            id: coffeeType
            width: 194
            height: 48
            text: qsTr("Coffee Type")
            font.pointSize: 25
            highlighted: coffeeType.pressed
        }

        Button {
            id: foam
            text: qsTr("Foam")
            font.pointSize: 25
        }

        Button {
            id: expressoShots
            text: qsTr("Expresso Shots")
            font.pointSize: 25
        }

        Button {
            id: hotOrIced
            text: qsTr("Hot or Iced")
            font.pointSize: 25
        }

        Button {
            id: blends
            text: qsTr("Blends")
            font.pointSize: 25
        }

        Button {
            id: coffeeSize
            text: qsTr("Coffee Size")
            font.pointSize: 25
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

    Button {
        id: brewCoffee
        x: 271
        y: 371
        text: qsTr("Brew!")
    }



}
