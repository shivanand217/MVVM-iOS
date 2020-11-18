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
    
    func updateDataSource(){
        
        self.dataSource = EmployeeTableViewDataSource(cellIdentifier: "EmployeeTableViewCell", items: self.employeeViewModel.empData.data, configureCell: { (cell, evm) in
            cell.employeeIdLabel.text = evm.id
            cell.employeeNameLabel.text = evm.employeeName
        })
        
        DispatchQueue.main.async {
            self.employeeTableView.dataSource = self.dataSource
            self.employeeTableView.reloadData()
        }
    }

}
