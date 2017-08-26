//
//  ClassTableViewDataSource.swift
//  TableView
//
//  Created by thang on 8/26/17.
//  Copyright © 2017 thang. All rights reserved.
//

import UIKit

class ClassTableViewDataSource: NSObject, UITableViewDataSource {
    
    var className = ["12", "13", "14", "15", "16"]
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return className.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = className[indexPath.row]
        return cell
    }
    
}
