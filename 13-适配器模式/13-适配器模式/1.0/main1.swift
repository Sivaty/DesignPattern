//
//  main1.swift
//  13-适配器模式
//
//  Created by sengshuaibin on 2021/4/8.
//

import Cocoa

protocol Target {
    func request()
}

class main1: NSObject {
    
    static func main() {
        let target: Target = Adapter()
        target.request()
    }

    class Adaptee {
        func specificRequest() {
            print("特殊操作")
        }
    }
    
    class Adapter: Target {
        let adaptee = Adaptee()
        
        func request() {
            adaptee.specificRequest()
        }
    }
    
}
