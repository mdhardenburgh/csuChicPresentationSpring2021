import QtQuick 2.0
import QtQuick.Controls 2.15                                                    
import QtQuick.Layouts 1.11                                                     
import QtQuick.Window 2.11   
import coffee.order 1.0

Item
{
    id: foamAmountItem
    signal foamAmountSignal(string foamAmountString)
    
    function open()
    {
        foamAmountDialog.open()
    }
    
    Dialog 
    {
        id: foamAmountDialog                                                        
        title: "Foam Amount"                                                        
        modal: true                                                                 
        standardButtons: DialogButtonBox.Cancel                                     
                                                                                    
        contentItem: RowLayout                                                      
        {                                                                           
            Button                                                                  
            {                                                                       
                text: "None"                                                   
                onClicked: foamAmountItem.foamAmountSignal("None") | foamAmountDialog.close()                                                           
            } 
            
            Button                                                                  
            {                                                                       
                text: "A little"                                                   
                onClicked: foamAmountItem.foamAmountSignal("A little") | foamAmountDialog.close()                                                           
            }        

            Button                                                                  
            {                                                                       
                text: "Normal"                                                   
                onClicked: foamAmountItem.foamAmountSignal("Normal") | foamAmountDialog.close()                                                           
            }   

            Button                                                                  
            {                                                                       
                text: "A lot"                                                   
                onClicked: foamAmountItem.foamAmountSignal("A lot") | foamAmountDialog.close() 
            }
        }
    }
}
