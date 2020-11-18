//
//  EmployeeTableView.swift
//  MVVM-Example
//
//  Created by Apple on 18/11/20.
//

import Foundation
import UIKit
import UIKit

class EmployeeView: UIView {
    
    @IBOutlet weak var employeeTableView: UITableView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupFromXib()
    }
    
    private func setupFromXib() {
        let view = Bundle.main.loadNibNamed("EmployeeView", owner: self, options: nil)?.first as! UIView
        self.addSubview(view)
    }
}

