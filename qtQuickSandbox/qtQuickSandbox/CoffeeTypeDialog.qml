import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Layouts 1.11
import QtQuick.Window 2.11

Dialog
{
    id: coffeeTypeDialog
    title: "Coffee Type"
    modal: true
    standardButtons: DialogButtonBox.Cancel
    signal coffeeTypeSignal (string coffeeTypeString)
   
    contentItem: RowLayout
    {
        Button
        {
            id: americanoButton
            text: "Americano"
            onClicked: coffeeTypeDialog.coffeeTypeSignal("Americano") | coffeeTypeDialog.close()

        }
        
        Button
        {
            id: latteButton
            text: "Latte"
        }

        Button
        {
            id: espressoButton
            text: "Espresso"
        }

        Button
        {
            id: mochaButton
            text: "Mocha"
        }

        Button
        {
            id: macchiatoButton
            text: "Macchiato"
        }

        Button
        {
            id: regularCoffeeButton
            text: "Regular Coffee"
        }

    }
        

}
