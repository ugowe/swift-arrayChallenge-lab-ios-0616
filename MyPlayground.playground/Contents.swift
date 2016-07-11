//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




    
    var shoppingList: [String] = []
    

        
        let numberOfItems: [Int] = [6, 4, 12, 4]
        let storeItems: [String] = ["Bananas", "Apples", "Eggs", "Rolls"]
        print(makeShoppingList(storeItems, quantityOfItems: numberOfItems))
        

    
    func makeShoppingList(items:[String], quantityOfItems: [Int]) -> [String] {
        
        var initialShoppingList: [String] = []
        var finalShoppingList: [String] = []
        var numberAndItem: String = ""
        
        
        for (i) in 0..<items.count {
            let item = items[i]
            let quantity = quantityOfItems[i]
            
            numberAndItem = "\(quantity) \(item)"
            initialShoppingList.append(numberAndItem)
        }
        for (index, thing) in initialShoppingList.enumerate() {
            finalShoppingList.append("\(index + 1). \(thing)")
        }
        
        
        return finalShoppingList
    }
    
    
