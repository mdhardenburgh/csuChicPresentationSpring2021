import QtQuick 2.12
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11
import QtQuick.Window 2.11
import coffee.order 1.0

Item
{
    id: coffeeTypeItem
    signal coffeeTypeSignal(string coffeeTypeString)
    
    function open()
    {
        coffeeTypeDialog.open()
    }
    
    Dialog
    {
        id: coffeeTypeDialog
        title: "Coffee Type"
        modal: true
        standardButtons: DialogButtonBox.Cancel
       
        contentItem: RowLayout
        {
            Button
            {
                id: americanoButton
                text: "Americano"
                onClicked: coffeeTypeItem.coffeeTypeSignal("Americano") | coffeeTypeDialog.close()

            }
            
            Button
            {
                id: latteButton
                text: "Latte"
                onClicked: coffeeTypeItem.coffeeTypeSignal("Latte") | coffeeTypeDialog.close()
            }

            Button
            {
                id: espressoButton
                text: "Espresso"
                onClicked: coffeeTypeItem.coffeeTypeSignal("Espresso") | coffeeTypeDialog.close()
            }

            Button
            {
                id: mochaButton
                text: "Mocha"
                onClicked: coffeeTypeItem.coffeeTypeSignal("Mocha") | coffeeTypeDialog.close()
            }

            Button
            {
                id: macchiatoButton
                text: "Macchiato"
                onClicked: coffeeTypeItem.coffeeTypeSignal("Macchiato") | coffeeTypeDialog.close()
            }

            Button
            {
                id: regularCoffeeButton
                text: "Regular Coffee"
                onClicked: coffeeTypeItem.coffeeTypeSignal("Regular Coffee") | coffeeTypeDialog.close()
            }

        }
    }
}
