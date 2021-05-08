import QtQuick 2.12
import QtQuick.Layouts 1.11
import coffee.order 1.0

Item
{
    property alias coffeeTypeAlias: coffeeTypeText.text
    property alias foamAmountAlias: foamAmountText.text       
    property alias espressoShotsAlias: espressoShotsText.text       
    property alias hotOrIcedAlias: hotOrIcedText.text           
    property alias blendsAlias: blendsText.text        
    property alias coffeeSizeAlias: coffeeSizeText.text       

    function clearText()
    {
        coffeeTypeText.text = ""
        foamAmountText.text = ""
        espressoShotsText.text = ""
        hotOrIcedText.text = ""
        blendsText.text = ""
        coffeeSizeText.text = ""
    }
 
    ColumnLayout
    {
        Text
        {                                                          
            id: coffeeTypeText
            //x: 144                                                                  
            //y: 37                                                                   
            //width: 353                                                              
            //height: 42                                                              
            text: ""                                
            font.pixelSize: 20                                                      
            //horizontalAlignment: Text.AlignHCenter                                  
            //minimumPixelSize: 12                                                    
            //minimumPointSize: 12
        }

        Text
        {
            id: foamAmountText
            text: ""
            font.pixelSize: 20                                                      
            //horizontalAlignment: Text.AlignHCenter                                  
            //minimumPixelSize: 12                                                    
            //minimumPointSize: 12
        }

        Text
        {
            id: espressoShotsText
            text: ""
            font.pixelSize: 20                                                      
        }

        Text
        {
            id: hotOrIcedText
            text: ""
            font.pixelSize: 20                                                      
        }

        Text
        {
            id: blendsText
            text: ""
            font.pixelSize: 20                                                      
        }

        Text
        {
            id: coffeeSizeText
            text: ""
            font.pixelSize: 20                                                      
        }
        
    }
    
}
