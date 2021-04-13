//
//  main2.swift
//  20-责任链模式
//
//  Created by sengshuaibin on 2021/4/13.
//

import Cocoa

protocol Handler {
    var successor: Handler? { set get }
    func handleRequest(request: Int)
}

class main2: NSObject {
    static func main() {
        let handler1 = ConcreteHandler1()
        let handler2 = ConcreteHandler2()
        let handler3 = ConcreteHandler3()
        
        handler1.successor = handler2
        handler2.successor = handler3
        
        let requests = [2, 8, 11, 14, 21, 23, 5, 30, 40]
        
        for item in requests {
            handler1.handleRequest(request: item)
        }
    }
    
    class ConcreteHandler1: Handler {
        var successor: Handler?
        
        func handleRequest(request: Int) {
            if request >= 0, request < 10 {
                print("\(Self.self) 处理请求 \(request)")
            } else {
                successor?.handleRequest(request: request)
            }
        }
    }
    
    class ConcreteHandler2: Handler {
        var successor: Handler?
        
        func handleRequest(request: Int) {
            if request >= 10, request < 20 {
                print("\(Self.self) 处理请求 \(request)")
            } else {
                successor?.handleRequest(request: request)
            }
        }
    }
    
    class ConcreteHandler3: Handler {
        var successor: Handler?
        
        func handleRequest(request: Int) {
            if request >= 20, request < 30 {
                print("\(Self.self) 处理请求 \(request)")
            } else {
                successor?.handleRequest(request: request)
            }
        }
    }
}
