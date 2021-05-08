import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtSensors 5.9
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.11
import coffee.order 1.0

Item
{
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

    Coffee
    {
        id: coffeeOrderBackend
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
        
        function start()
        {
            animation.start()
        }

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
                name: "grindingCoffee"
                PropertyChanges
                {
                    target: brewingStatus
                    text: "Griding coffee beans..."
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
                name: "brewingCoffee"
                PropertyChanges
                {
                    target: brewingStatus
                    text: "Brewing coffee..."
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
                name: "steamingMilk"
                PropertyChanges
                {
                    target: brewingStatus
                    text: "Steaming milk ..."
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
                name: "done"
                PropertyChanges
                {
                    target: brewingStatus
                    text: "Done!!"
                    visible: true
                }

                PropertyChanges
                {
                    target: coffeeOrder
                    visible: false
                }
            }
        ]

        SequentialAnimation
        {
            id: animation
            PropertyAction
            {
                target: brewingStatus
                property: "state"
                value: "beginBrewing"
            }

            PauseAnimation
            {
                duration: 1000
            }
    
            PropertyAction
            {
                target: brewingStatus
                property: "state"
                value: "grindingCoffee"
            }

            PauseAnimation
            {
                duration: 1500
            }
    
            PropertyAction
            {
                target: brewingStatus
                property: "state"
                value: "brewingCoffee"
            }
            
            PauseAnimation
            {
                duration: 1500
            }
    
            PropertyAction
            {
                target: brewingStatus
                property: "state"
                value: "steamingMilk"
            }

            PauseAnimation
            {
                duration: 1500
            }
    
            PropertyAction
            {
                target: brewingStatus
                property: "state"
                value: "done"
            }

            PauseAnimation
            {
                duration: 1000
            }

            PropertyAction
            {
                target: brewingStatus
                property: "state"
                value: "initial"
            }
            
        }
    
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
            onClicked: coffeeTypeDialogBox.open()
        }

        Button {
            id: foamAmount
            text: "Foam Amount"
            font.pointSize: 25
            highlighted: foamAmount.pressed
            onClicked: foamAmountDialog.open()
        }

        Button {
            id: espressoShots
            text: "Espresso Shots"
            font.pointSize: 25
            highlighted: espressoShots.pressed
            onClicked: espressoShotsDialog.open()
        }

        Button {
            id: hotOrIced
            text: "Hot or Iced"
            font.pointSize: 25
            highlighted: hotOrIced.pressed
            onClicked: hotOrIcedDialog.open()
        }

        Button {
            id: blends
            text: "Blends"
            font.pointSize: 25
            highlighted: blends.pressed
            onClicked: blendsDialog.open()
        }

        Button {
            id: coffeeSize
            text: "Coffee Size"
            font.pointSize: 25
            highlighted: coffeeSize.pressed
            onClicked: coffeeSizeDialog.open()
        }

    }

    CoffeeTypeDialog
    {
        id: coffeeTypeDialogBox
        x: Math.round((parent.width-width)/2)
        y: Math.round((parent.height - height)/2)
        
        onCoffeeTypeSignal: coffeeOrder.coffeeTypeAlias = coffeeTypeString
    }

    FoamAmountDialog
    {
        id: foamAmountDialog
        x: Math.round((parent.width-width)/2)
        y: Math.round((parent.height - height)/2)
        
        onFoamAmountSignal: coffeeOrder.foamAmountAlias = foamAmountString 
    }

    EspressoShotsDialog
    {
        id: espressoShotsDialog
        x: Math.round((parent.width-width)/2)
        y: Math.round((parent.height - height)/2)
        
        onEspressoShotsSignal: coffeeOrder.espressoShotsAlias = espressoShotsString 
    }

    HotOrIcedDialog
    {
        id: hotOrIcedDialog
        x: Math.round((parent.width-width)/2)
        y: Math.round((parent.height - height)/2)
        
        onHotOrIcedSignal: coffeeOrder.hotOrIcedAlias = hotOrIcedString 
    }

    BlendsDialog
    {
        id: blendsDialog
        x: Math.round((parent.width-width)/2)
        y: Math.round((parent.height - height)/2)
        
        onBlendsSignal: coffeeOrder.blendsAlias = blendsString 
    }

    CoffeeSizeDialog
    {
        id: coffeeSizeDialog
        x: Math.round((parent.width-width)/2)
        y: Math.round((parent.height - height)/2)
        
        onCoffeeSizeSignal: coffeeOrder.coffeeSizeAlias = coffeeSizeString 
    }
    Button {
        id: brewCoffee
        x: 280
        y: 390
        text: "Brew!"
        onClicked: brewingStatus.start() | coffeeOrder.clearText()
    }
   
}
