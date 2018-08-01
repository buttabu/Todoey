//
//  ViewController.swift
//  Todoey
//
//  Created by Abu Butt on 7/27/18.
//  Copyright © 2018 Abu Butt. All rights reserved.
//

import UIKit

class TodoViewListViewController: UITableViewController {

    
    let itemArray = ["Find Abu","Buy Eggos", "Destroy"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
    }

     //MARK - Tableview Datasource Methods
    
    // first method: number of rows
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemArray.count
    }
    // second method: cell for row at the index path
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // create a cell which will be a resuable cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "ToDoItemCell", for: indexPath)
        
        // nexth to setup the cell label
        cell.textLabel?.text = itemArray[indexPath.row]
        
        // finally return cell
        return cell
    }
    //MARK - TableView Delegate Methods
    // method when the cell is clicked and the method id fire
    // didSelectRowAt, index path
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //print(itemArray[indexPath.row]) // print a number
        
        // checkmark is an accessory
        // add a checkmark next to the cell that gets selected
        // getting the cell reference that is selected by the user
        // now how can we remove the checkmark, when it is already been selected
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
        } else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        
        
        tableView.deselectRow(at: indexPath, animated: true) // cell background color is changed and go fast
        
        
    }
    
    
    
}

