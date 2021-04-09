//
//  main1.swift
//  10-观察者模式
//
//  Created by sengshuaibin on 2021/3/30.
//

import Cocoa

//双向耦合的代码
class main1: NSObject {
    func main() {
        let secretary = Secretary()
        
        let colleague1 = StockObserve(name: "同事1", sub: secretary)
        let colleague2 = StockObserve(name: "同事2", sub: secretary)
        
        secretary.attach(observe: colleague1)
        secretary.attach(observe: colleague2)
        
        secretary.action = "老板回来了"
        secretary.notify()
    }

    class Secretary {
        var observes: [StockObserve] = []
        var action = ""
        
        func attach(observe: StockObserve) {
            observes.append(observe)
        }
        
        func notify() {
            observes.forEach { (item) in
                item.update()
            }
        }
    }

    class StockObserve {
        let name: String
        let sub: Secretary
        
        init(name: String, sub: Secretary) {
            self.name = name
            self.sub = sub
        }
        
        func update() {
            print("\(sub.action), \(name) 关闭股票行情，继续工作")
        }
    }

}
