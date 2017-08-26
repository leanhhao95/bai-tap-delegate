//
//  StudentTableViewDataSource.swift
//  TableView
//
//  Created by thang on 8/26/17.
//  Copyright © 2017 thang. All rights reserved.
//

import UIKit

class StudentTableViewDataSource: NSObject, UITableViewDataSource {
    
    var student = ["Ba", "Bon", "Nam", "Sau"]
    
    // MARK: - Table view data source
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return student.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
     cell.textLabel?.text = student[indexPath.row]
     return cell
     }

}
