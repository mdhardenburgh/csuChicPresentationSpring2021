import QtQuick 2.0                                                              
import QtQuick.Controls 2.15                                                    
import QtQuick.Layouts 1.11                                                     
import QtQuick.Window 2.11                                                      
import coffee.order 1.0                                                         
                                                                                
Item                                                                            
{                                                                               
    id: espressoShotsItem                                                          
    signal espressoShotsSignal(string espressoShotsString)                            
                                                                                
    function open()                                                             
    {                                                                           
        espressoShotsDialog.open()                                                 
    }                                                                           
                                                                                
    Dialog                                                                      
    {                                                                           
        id: espressoShotsDialog                                                    
        title: "Espresso Shots"                                                    
        modal: true                                                             
        standardButtons: DialogButtonBox.Cancel                                 
                                                                                
        contentItem: RowLayout                                                  
        {                                                                       
            Button                                                              
            {                                                                   
                text: "None"                                                    
                onClicked: espressoShotsItem.espressoShotsSignal("None") | espressoShotsDialog.close()
            }                                                                   
                                                                                
            Button                                                              
            {                                                                   
                text: "1"                                                
                onClicked: espressoShotsItem.espressoShotsSignal("1") | espressoShotsDialog.close()
            }                                                                   
                                                                                
            Button                                                              
            {                                                                   
                text: "2"                                                  
                onClicked: espressoShotsItem.espressoShotsSignal("2") | espressoShotsDialog.close()
            }                                                                   
                                                                                
            Button                                                              
            {                                                                   
                text: "3"                                                   
                onClicked: espressoShotsItem.espressoShotsSignal("3") | espressoShotsDialog.close()
            }                                                                   
        }                                                                       
    }                                                                           
}                                         
