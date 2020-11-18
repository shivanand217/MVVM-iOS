//
//  EmployeeTableViewDataSource.swift
//  MVVM-Example
//
//  Created by Apple on 18/11/20.
//

import Foundation
import UIKit

class EmployeeTableViewDataSource<EmployeeTableViewCell: UITableViewCell, T> : NSObject, UITableViewDataSource {
    
    private var cellIdentifier: String!
    private var items: [T]!
    var configureCell: (EmployeeTableViewCell, T) -> () = { _, _ in }
    
    init(cellIdentifier: String, items: [T], configureCell: @escaping (EmployeeTableViewCell, T) -> ()) {
        self.cellIdentifier = cellIdentifier
        self.items = items
        self.configureCell = configureCell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! EmployeeTableViewCell
        let item = self.items[indexPath.row]
        self.configureCell(cell, item)
        return cell
    }
    
}
