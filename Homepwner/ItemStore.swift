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
    
    init() {
        for _ in 0..<5 {
            createItem()
        }
    }
    
    func createItem() -> Item {
        let newItem = Item(random: true)
        allItems.append(newItem)
        return newItem
    }
}
