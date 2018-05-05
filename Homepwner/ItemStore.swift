//
//  ItemStore.swift
//  Homepwner
//
//  Created by Christopher Myers on 5/4/18.
//  Copyright © 2018 Dragoman Developers. All rights reserved.
//

import UIKit

class ItemStore {
    var allItems = [Item]()
    
    init() { }
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
    
    func removeItem(item : Item) {
        if let index = allItems.index(of: item) {
            allItems.remove(at: index)
        }
    }
    
    func moveItemAtIndex(fromIndex: Int, toIndex: Int) {
        if fromIndex == toIndex {
            return
        }
        
        let movedItem = allItems[fromIndex]
        allItems.remove(at: fromIndex)
        allItems.insert(movedItem, at: toIndex)
    }
}
