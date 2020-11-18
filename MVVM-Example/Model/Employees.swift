//
//  Employee.swift
//  MVVM-Example
//
//  Created by Apple on 18/11/20.
//

import Foundation

struct Employees: Decodable {
    let status: String
    let data: [EmployeeData]
}

struct EmployeeData: Decodable {
    let id, employeeName, employeeSalary, employeeAge: String
    let profileImage: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}
