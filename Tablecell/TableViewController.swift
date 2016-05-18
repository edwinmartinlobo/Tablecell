//
//  TableViewController.swift
//  Tablecell
//
//  Created by Edwin on 18/05/16.
//  Copyright © 2016 Edwin. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var cars = ["BMW","Mercedez Benz", "Volvo", "Audi"]

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return cars.count
    }

   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("Carcell", forIndexPath: indexPath)
       cell.textLabel?.text = cars[indexPath.row]
        cell.detailTextLabel?.text = "I like cars"

        return cell
    }
    

}
