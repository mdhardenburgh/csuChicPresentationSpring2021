import QtQuick 2.0

Item
{
    property alias coffeeTypeAlias: coffeeTypeText.text
    
    Text
    {                                                          
        id: coffeeTypeText
        //x: 144                                                                  
        //y: 37                                                                   
        //width: 353                                                              
        //height: 42                                                              
        text: "latte"                                
        font.pixelSize: 29                                                      
        horizontalAlignment: Text.AlignHCenter                                  
        minimumPixelSize: 12                                                    
        minimumPointSize: 12
    }

    
    
}
