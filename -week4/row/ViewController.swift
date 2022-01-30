//
//  ViewController.swift
//  row
//
//  Created by 陳心柔 on 2022/1/28.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
   // var info = ["row0", "row1", "row2", "row3", "row4", "row5", "row6", "row7", "row8", "row9"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return self.tableViewData.count
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell",for: indexPath)
        let firstMessage = "This is section 0,row"
        let secondMessage = String (indexPath.row)
        //var message = firstMessage + secondMessage
        cell.textLabel?.text = firstMessage + secondMessage
        return cell
    }
    
    //let tableViewData = Array(repeating: "This is section 0,", count: 10)
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UITableViewCell.self,forCellReuseIdentifier: "TableViewCell")
        tableView.dataSource = self
    }

   
}

