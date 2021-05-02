import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Timeline 1.0
import QtQuick.Controls 2.15
import QtSensors 5.9
import QtQuick.Layouts 1.11

ApplicationWindow {
    id: mainWindow
    width: 640
    height: 480
    visible: true
    title: "Jitters Coffee"

    Text {
        id: welcome
        x: 144
        y: 37
        width: 353
        height: 42
        text: "Welcome to Jitters Coffee!"
        font.pixelSize: 29
        horizontalAlignment: Text.AlignHCenter
        minimumPixelSize: 12
        minimumPointSize: 12
    }

    CoffeeOrder
    {
        id: coffeeOrder
        x: 181
        y: 236
        width: 279
        height: 32
    }

    Text
    {
        id: brewingStatus
        x: 181
        y: 236
        width: 279
        height: 32
        text: ""
        font.pixelSize: 29
        state: "initial"
        
        states:
        [
            State
            {
                name: "initial"
                PropertyChanges
                {
                    target:brewingStatus
                    visible: false
                }
                
                PropertyChanges
                {
                    target: coffeeOrder
                    visible: true
                }
            },

            State
            {
                name: "beginBrewing"
                PropertyChanges
                {
                    target: brewingStatus
                    text: "Starting your order!"
                    visible: true
                }
                
                PropertyChanges
                {
                    target: coffeeOrder
                    visible: false
                }
            },

            State
            {
                name: "gridingCoffee"
                PropertyChanges
                {
                    target: brewingStatus
                    text: "Griding coffee beans..."
                }
            },

            State
            {
                name: "brewingCoffee"
                PropertyChanges
                {
                    target: brewingStatus
                    text: "Brewing your coffee..."
                }
            },

            State
            {
                name: "steamingMilk"
                PropertyChanges
                {
                    target: brewingStatus
                    text: "Steaming milk..."
                }
            },

            State
            {
                name: "done"
                PropertyChanges
                {
                    target: brewingStatus
                    text: "Done!!"
                }
            }
        ]

        SequentialAnimation
    
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
            text: "Coffee Type"
            font.pointSize: 25
            highlighted: coffeeType.pressed
            onClicked: coffeeTypeDialog.open()
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

    CoffeeTypeDialog
    {
        id: coffeeTypeDialog
        x: Math.round((parent.width-width)/2)
        y: Math.round((parent.height - height)/2)
        
        onCoffeeTypeSignal: coffeeOrder.coffeeTypeAlias = coffeeTypeString
    }

    Button {
        id: brewCoffee
        x: 271
        y: 371
        text: "Brew!"
        onClicked: brewingStatus.state = "beginBrewing"
    }

    

}
