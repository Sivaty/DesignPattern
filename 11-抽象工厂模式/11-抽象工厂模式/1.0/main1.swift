//
//  main1.swift
//  11-抽象工厂模式
//
//  Created by sengshuaibin on 2021/3/30.
//

import Cocoa

protocol FactoryProtocol {
    static func createUser() -> UserProtocol
    static func createDepartment() -> DepartmentProtocol
}

protocol UserProtocol {
    func insert(user: User)
    func getUser(id: String)
}

protocol DepartmentProtocol {
    func insert(user: Department)
    func getDepartment(id: String)
}

class User {
    
}

class Department {
    
}

class SqlServerFactory: FactoryProtocol {
    static func createUser() -> UserProtocol {
        return SqlServerUser()
    }
    
    static func createDepartment() -> DepartmentProtocol {
        return SqlServerDepartment()
    }
}

class AccessFactory: FactoryProtocol {
    static func createUser() -> UserProtocol {
        return AccessUser()
    }
    
    static func createDepartment() -> DepartmentProtocol {
        return AccessDepartment()
    }
}

class SqlServerUser: UserProtocol {
    func insert(user: User) {
        print("在SqlServer中给user插入一条数据")
    }
    
    func getUser(id: String) {
        print("在SqlServer中根据id获取一条user数据")
    }
}

class AccessUser: UserProtocol {
    func insert(user: User) {
        print("在Access中给user插入一条数据")
    }
    
    func getUser(id: String) {
        print("在Access中根据id获取一条user数据")
    }
}

class SqlServerDepartment: DepartmentProtocol {
    func insert(user: Department) {
        print("在SqlServer中给Department插入一条数据")
    }
    
    func getDepartment(id: String) {
        print("在SqlServer中根据id获取一条Department数据")
    }
}

class AccessDepartment: DepartmentProtocol {
    func insert(user: Department) {
        print("在Access中给Department插入一条数据")
    }
    
    func getDepartment(id: String) {
        print("在Access中根据id获取一条Department数据")
    }
}

class main1: NSObject {
    static func main() {
        let userOperation = AccessFactory.createUser()
        userOperation.insert(user: User())
        userOperation.getUser(id: "5")
        
        let departmentOperation = AccessFactory.createDepartment()
        departmentOperation.insert(user: Department())
        departmentOperation.getDepartment(id: "5")
    }
    
}
