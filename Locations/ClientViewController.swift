//
//  ViewController.swift
//  Locations
//
//  Created by Alfred Schmidt on 28/2/18.
//  Copyright © 2018 Alfred Schmidt. All rights reserved.
//

import UIKit

class ClientViewController: UITableViewController {
    
    let clientArray = ["Mary May", "Peter Hollings", "Alfred Schmidt", "Donna Blayney"]

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //MARK - Tableview Datasource Methods
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return clientArray.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Details", for: indexPath)
        cell.textLabel?.text = clientArray[indexPath.row]
        
        return cell
    }
    //MARK - Tableview Delegate Methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(clientArray [indexPath.row])
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark{
            tableView.cellForRow(at: indexPath)?.accessoryType = .none}
        else {
        tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
