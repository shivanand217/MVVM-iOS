//
//  ViewController.swift
//  MVVM-Example
//
//  Created by Apple on 18/11/20.
//

import UIKit

class EmployeeViewController: UIViewController {
    
    @IBOutlet weak var employeeView: EmployeeView!
    
    private var employeeViewModel: EmployeesViewModel!
    
    private var dataSource : EmployeeTableViewDataSource<EmployeeTableViewCell,EmployeeData>!

    override func viewDidLoad() {
        super.viewDidLoad()
        callToViewModelForUIUpdate()
    }
    
    func callToViewModelForUIUpdate() {
        
        self.employeeViewModel = EmployeesViewModel()
        self.employeeViewModel.bindEmployeeViewModelToEmployeeViewController = {
            self.updateDataSource()
        }
    }
    
    func updateDataSource() {
        
        self.dataSource = EmployeeTableViewDataSource
    }

}
