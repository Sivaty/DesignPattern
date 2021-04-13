//
//  main3.swift
//  20-责任链模式
//
//  Created by sengshuaibin on 2021/4/13.
//

import Cocoa

protocol Manager {
    var name: String { set get }
    var superior: Manager? { set get }
    
    func requestApplications(request: Request)
}

class Request {
    var requestType = ""
    var requestContent = ""
    var number = 0
}

class main3: NSObject {
    static func main() {
        let jingli = CommonManager(name: "经理")
        let zongjian = Majordomo(name: "总监")
        let zongjingli = GeneralManager(name: "总经理")
        
        jingli.superior = zongjian
        zongjian.superior = zongjingli
        
        let request = Request()
        request.requestType = "加薪"
        request.requestContent = "小菜请求加薪"
        request.number = 1000
        
        jingli.requestApplications(request: request)
        
        let request2 = Request()
        request2.requestType = "请假"
        request2.requestContent = "小菜请求请假"
        request2.number = 3
        
        jingli.requestApplications(request: request2)
    }
    
    class CommonManager: Manager {
        var name: String
        
        var superior: Manager?
        
        init(name: String) {
            self.name = name
        }
        
        func requestApplications(request: Request) {
            if request.requestType == "请假", request.number <= 2 {
                print("\(name): \(request.requestContent) 数量\(request.number)被批准")
            } else {
                superior?.requestApplications(request: request)
            }
        }
    }
    
    class Majordomo: Manager {
        var name: String
        
        var superior: Manager?
        
        init(name: String) {
            self.name = name
        }
        
        func requestApplications(request: Request) {
            if request.requestType == "请假", request.number <= 5 {
                print("\(name): \(request.requestContent) 数量\(request.number)被批准")
            } else {
                superior?.requestApplications(request: request)
            }
        }
    }
    
    class GeneralManager: Manager {
        var name: String
        
        var superior: Manager?
        
        init(name: String) {
            self.name = name
        }
        
        func requestApplications(request: Request) {
            if request.requestType == "请假" {
                print("\(name): \(request.requestContent) 数量\(request.number)被批准")
            } else if request.requestType == "加薪", request.number <= 500 {
                print("\(name): \(request.requestContent) 数量\(request.number)被批准")
            } else if request.requestType == "加薪", request.number > 500 {
                print("\(name): \(request.requestContent) 数量\(request.number)再说吧")
            }
        }
    }
}
