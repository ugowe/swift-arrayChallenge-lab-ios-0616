//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let itemQuantities: [Int] = [6, 4, 12, 4]
        let itemsNeeded: [String] = ["Bananas", "Apples", "Eggs", "Rolls"]
//        makeShoppingList( quantityOfItems:)
        shoppingList = makeShoppingList(itemsNeeded, quantityOfItems: itemQuantities)
        
        print(shoppingList)
    }
    
    func makeShoppingList(items:[String], quantityOfItems: [Int]) -> [String] {
        
        var initialShoppingList: [String] = []
        var finalShoppingList: [String] = []
        var numberAndItem: String = ""
        
        
        for i in 0..<items.count {
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
    
    
}