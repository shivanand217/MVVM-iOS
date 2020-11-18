//
//  EmployeeTableView.swift
//  MVVM-Example
//
//  Created by Apple on 18/11/20.
//

import Foundation
import UIKit

extension EmployeeView: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}

extension EmployeeView: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        if let cell = tableView.dequeueReusableCell(withIdentifier: )
    }
}
