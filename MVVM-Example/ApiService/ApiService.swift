//
//  ApiService.swift
//  MVVM-Example
//
//  Created by Apple on 18/11/20.
//

import Foundation

let sourcesURL = URL(string: "http://dummy.restapiexample.com/api/v1/employees")!

enum EndPoints {
    case employeeList
    func getEndpoint() -> URL {
        switch self {
        case .employeeList:
            return sourcesURL
        }
    }
}

class ApiService: NSObject {
    
    static func fetchAllEmployees(completionBlock:@escaping (Employees) -> ()) {
        URLSession.shared.dataTask(with: EndPoints.employeeList.getEndpoint()) { (data, response, apiError) in
            
            if let jsonData = data {
                
                do {
                    let result = try JSONDecoder().decode(Employees.self, from: jsonData)
                    print("employee data is \(result)")
                    
                    completionBlock(result)
                } catch let err as NSError {
                    print(err.description)
                    print(err.debugDescription)
                }
            }
        }.resume()
    }
    
    static func fetchEmployeeData(completionBlock:@escaping (EmployeeData) -> ()) {}
    
    private func callEndpoint(decodableProtocol: Any, completionBlock:@escaping (Any) -> ()) {}
    
}
