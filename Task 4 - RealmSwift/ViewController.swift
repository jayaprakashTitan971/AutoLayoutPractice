//
//  ViewController.swift
//  Task 4 - RealmSwift
//
//  Created by Jayaprakash on 20/07/23.
//

import UIKit
import RealmSwift

class Employee: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    @Persisted var name: String
    @Persisted var email: String
    
    convenience init(name: String, email: String) {
        self.init()
        self.name = name
        self.email = email
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let realm = try! Realm()
        let emp1 = Employee(name: "JP", email: "jp@gmail.com")
        let emp2 = Employee(name: "Harsha", email: "harsha@gmail.com")
        
        try! realm.write {
            realm.add(emp1)
            realm.add(emp2)
        }
        
        var employees = realm.objects(Employee.self)
        
        print(employees)
        
        try! realm.write {
            employees[1].email = "harsha22@gmail.com"
        }
        
        employees = realm.objects(Employee.self)
        
        print(employees)
        
        try! realm.write {
            realm.delete(employees[0])
        }
        
        employees = realm.objects(Employee.self)
        
        print(employees)
    }


}

