//
//  ItemsViewController.swift
//  Homepwner
//
//  Created by Christopher Myers on 5/4/18.
//  Copyright © 2018 Dragoman Developers. All rights reserved.
//

import UIKit

class ItemsViewController : UITableViewController {
    
    var itemStore : ItemStore!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let statusBarHeigh = UIApplication.shared.statusBarFrame.height
        let insets = UIEdgeInsets(top: statusBarHeigh, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
}



extension ItemsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemStore.allItems.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       // let cell = UITableViewCell(style: .value1, reuseIdentifier: "UITableViewCell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        let item = itemStore.allItems[indexPath.row]
        
        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = "$\(item.valueInDollars)"
        
        return cell 
    }
}
