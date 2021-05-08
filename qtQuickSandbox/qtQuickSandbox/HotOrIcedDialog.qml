import QtQuick 2.0                                                              
import QtQuick.Controls 2.15                                                    
import QtQuick.Layouts 1.11                                                     
import QtQuick.Window 2.11                                                      
import coffee.order 1.0                                                         
                                                                                
Item                                                                            
{                                                                               
    id: hotOrIcedItem                                                          
    signal hotOrIcedSignal(string hotOrIcedString)                            
                                                                                
    function open()                                                             
    {                                                                           
        hotOrIcedDialog.open()                                                 
    }                                                                           
                                                                                
    Dialog                                                                      
    {                                                                           
        id: hotOrIcedDialog                                                    
        title: "Hot or Iced Beverage?"                                                    
        modal: true                                                             
        standardButtons: DialogButtonBox.Cancel                                 
                                                                                
        contentItem: RowLayout                                                  
        {                                                                       
            Button                                                              
            {                                                                   
                text: "Hot"                                                    
                onClicked: hotOrIcedItem.hotOrIcedSignal("Hot") | hotOrIcedDialog.close()
            }                                                                   
                                                                                
            Button                                                              
            {                                                                   
                text: "Iced"                                                
                onClicked: hotOrIcedItem.hotOrIcedSignal("Iced") | hotOrIcedDialog.close()
            }                                                                                                                                    
       }                                                                       
    }                                                                           
}                                       
