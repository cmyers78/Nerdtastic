//
//  Item.swift
//  Homepwner
//
//  Created by Christopher Myers on 5/4/18.
//  Copyright © 2018 Dragoman Developers. All rights reserved.
//

import UIKit

class Item : NSObject {
    var name : String
    var valueInDollars : Int
    var serialNumber : String?
    let dateCreated : Date
    
    init(name : String, serialNumber : String?, valueInDollars : Int) {
        self.name = name
        self.valueInDollars = valueInDollars
        self.serialNumber = serialNumber
        self.dateCreated = Date()
        
        super.init()
    }
    
    convenience init(random : Bool = false) {
        if random {
            let adj = ["Fluffy", "Rusty", "Shiny"]
            let noun = ["Bear", "Spork", "Mac"]
            
            var idx = arc4random_uniform(UInt32(noun.count))
            let randomNoun = noun[Int(idx)]
            
            idx = arc4random_uniform(UInt32(adj.count))
            let randomAdj = adj[Int(idx)]
            
            let randomName = "\(randomAdj) \(randomNoun)"
            let randomValue = Int(arc4random_uniform(100))
            let randomSerialNumber = UUID().uuidString.components(separatedBy: "-").first!
            
            self.init(name: randomName, serialNumber: randomSerialNumber, valueInDollars: randomValue)
        } else {
            self.init(name: "", serialNumber: nil, valueInDollars: 0)
        }
    }
}
