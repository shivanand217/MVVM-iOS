//
//  EmployeeViewModel.swift
//  MVVM-Example
//
//  Created by Apple on 18/11/20.
//

import Foundation

class EmployeesViewModel: NSObject {
    
    private var apiService:ApiService!
    
    // MVVM bindings of view model to controllers
    
    // this property needs to be called from the view controller class
    var bindEmployeeViewModelToEmployeeViewController:(() -> ()) = {}
    
    private(set) var empData: Employees! {
        didSet {
            self.bindEmployeeViewModelToEmployeeViewController()
        }
    }
    
    override init() {
        super.init()
        self.apiService = ApiService()
    }
    
    func fetchEmployeeLists() {
        ApiService.fetchAllEmployees { [weak self] (employee) in
            
            // we are binding the empData property
            // from the api response we are getting
            
        }
    }
}
