import QtQuick 2.0                                                              
import QtQuick.Controls 2.15                                                    
import QtQuick.Layouts 1.11                                                     
import QtQuick.Window 2.11                                                      
import coffee.order 1.0                                                         
                                                                                
Item                                                                            
{                                                                               
    id: blendsItem                                                          
    signal blendsSignal(string blendsString)                            
                                                                                
    function open()                                                             
    {                                                                           
        blendsDialog.open()                                                 
    }                                                                           
                                                                                
    Dialog                                                                      
    {                                                                           
        id: blendsDialog                                                    
        title: "Chose your coffee blend"                                                    
        modal: true                                                             
        standardButtons: DialogButtonBox.Cancel                                 
                                                                                
        contentItem: RowLayout                                                  
        {                                                                       
            Button                                                              
            {                                                                   
                text: "Starbucks Blonde"                                                    
                onClicked: blendsItem.blendsSignal("Starbucks Blonde") | blendsDialog.close()
            }                                                                   
                                                                                
            Button                                                              
            {                                                                   
                text: "Equator Coffee Equator Blend"                                                
                onClicked: blendsItem.blendsSignal("Equator Blend") | blendsDialog.close()
            }                                                                   
                                                                                
            Button                                                              
            {                                                                   
                text: "Stumptown Holler Mountian"                                                  
                onClicked: blendsItem.blendsSignal("Stumptown Holler Mountian") | blendsDialog.close()
            }                                                                   
                                                                                
       }                                                                       
    }                                                                           
}                                       
