import QtQuick 2.0                                                              
import QtQuick.Controls 2.15                                                    
import QtQuick.Layouts 1.11                                                     
import QtQuick.Window 2.11                                                      
import coffee.order 1.0                                                         
                                                                                
Item                                                                            
{                                                                               
    id: coffeeSizeItem                                                          
    signal coffeeSizeSignal(string coffeeSizeString)                            
                                                                                
    function open()                                                             
    {                                                                           
        coffeeSizeDialog.open()                                                 
    }                                                                           
                                                                                
    Dialog                                                                      
    {                                                                           
        id: coffeeSizeDialog                                                    
        title: "Cofee Size"                                                    
        modal: true                                                             
        standardButtons: DialogButtonBox.Cancel                                 
                                                                                
        contentItem: RowLayout                                                  
        {                                                                       
            Button                                                              
            {                                                                   
                text: "Small"                                                    
                onClicked: coffeeSizeItem.coffeeSizeSignal("Small") | coffeeSizeDialog.close()
            }                                                                   
                                                                                
            Button                                                              
            {                                                                   
                text: "Medium"                                                
                onClicked: coffeeSizeItem.coffeeSizeSignal("Medium") | coffeeSizeDialog.close()
            }                                                                   
                                                                                
            Button                                                              
            {                                                                   
                text: "Large"                                                  
                onClicked: coffeeSizeItem.coffeeSizeSignal("Large") | coffeeSizeDialog.close()
            }                                                                   
                                                                                
       }                                                                       
    }                                                                           
}                                       
