//
//  main1.swift
//  22-享元模式
//
//  Created by sengshuaibin on 2021/4/14.
//

import Cocoa

protocol Flyweight {
    func operation(extrinsicState: Int)
}

class main1: NSObject {

    static func main() {
        var extrinsicState = 22
        
        let f = FlyweightFactory()
        
        extrinsicState -= 1
        let fx = f.getFlyweight(key: "X")
        fx?.operation(extrinsicState: extrinsicState)
        
        extrinsicState -= 1
        let fy = f.getFlyweight(key: "Y")
        fy?.operation(extrinsicState: extrinsicState)
        
        extrinsicState -= 1
        let fz = f.getFlyweight(key: "Z")
        fz?.operation(extrinsicState: extrinsicState)
        
        extrinsicState -= 1
        let uf = UnsharedConcreteFlyweight()
        uf.operation(extrinsicState: extrinsicState)
    }
    
    class ConcreteFlyweight: Flyweight {
        func operation(extrinsicState: Int) {
            print("具体Flyweight：\(extrinsicState)")
        }
    }
    
    class UnsharedConcreteFlyweight: Flyweight {
        func operation(extrinsicState: Int) {
            print("不共享的具体Flyweight：\(extrinsicState)")
        }
    }
    
    class FlyweightFactory {
        var dic: [String: Flyweight] = [:]
        
        init() {
            dic["X"] = ConcreteFlyweight()
            dic["Y"] = ConcreteFlyweight()
            dic["Z"] = ConcreteFlyweight()
        }
        
        func getFlyweight(key: String) -> Flyweight? {
            dic[key]
        }
    }
    
}
