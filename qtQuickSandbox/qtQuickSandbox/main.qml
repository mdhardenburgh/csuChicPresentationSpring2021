import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import QtSensors 5.9
import QtQuick.Timeline 1.0
import QtQuick.Layouts 1.11
import coffee.order 1.0

ApplicationWindow {
    id: mainWindow
    width: 840
    height: 480
    visible: true
    title: "Jitters Coffee"

    CoffeeItem
    {
        id: coffeeItems
    }
}
