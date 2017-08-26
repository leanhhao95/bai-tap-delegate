//
//  TableViewController.swift
//  TableView
//
//  Created by thang on 8/26/17.
//  Copyright © 2017 thang. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    let studentDelegate = StudentTableViewDelegate()
    let studentDataSource = StudentTableViewDataSource()
    let classDelegate = ClassTableViewDelegate()
    let classDataSource = ClassTableViewDataSource()

    @IBOutlet weak var segement: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = studentDelegate
        tableView.dataSource = studentDataSource
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func selectedTable(_ sender: Any) {
        switch segement.selectedSegmentIndex {
        case 0:
            tableView.delegate = studentDelegate
            tableView.dataSource = studentDataSource
        case 1:
            tableView.delegate = classDelegate
            tableView.dataSource = classDataSource
        default:
            return
        }
        tableView.reloadData()
    }
}
