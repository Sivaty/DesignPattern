//
//  main1.swift
//  20-责任链模式
//
//  Created by sengshuaibin on 2021/4/13.
//

import Cocoa

class main1: NSObject {
    
    static func main() {
        let jingli = Manager(name: "经理")
        let zongjian = Manager(name: "总监")
        let zongjingli = Manager(name: "总经理")
        
        let request = Request()
        request.requestType = "加薪"
        request.requestContent = "小菜请求加薪"
        request.number = 1000
        
        jingli.getResult(managerLevel: "经理", request: request)
        zongjian.getResult(managerLevel: "总监", request: request)
        zongjingli.getResult(managerLevel: "总经理", request: request)
        
        let request2 = Request()
        request2.requestType = "请假"
        request2.requestContent = "小菜请求请假"
        request2.number = 3
        
        jingli.getResult(managerLevel: "经理", request: request2)
        zongjian.getResult(managerLevel: "总监", request: request2)
        zongjingli.getResult(managerLevel: "总经理", request: request2)
    }

    class Request {
        var requestType = ""
        var requestContent = ""
        var number = 0
    }
    
    class Manager {
        let name: String
        
        init(name: String) {
            self.name = name
        }
        
        func getResult(managerLevel: String, request: Request) {
            if managerLevel == "经理" {
                if request.requestType == "请假", request.number <= 2 {
                    print("\(name): \(request.requestContent) 数量\(request.number)被批准")
                } else {
                    print("\(name): \(request.requestContent) 数量\(request.number)我无权处理")
                }
            } else if managerLevel == "总监" {
                if request.requestType == "请假", request.number <= 5 {
                    print("\(name): \(request.requestContent) 数量\(request.number)被批准")
                } else {
                    print("\(name): \(request.requestContent) 数量\(request.number)我无权处理")
                }
            } else if managerLevel == "总经理" {
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
}
