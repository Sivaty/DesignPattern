//
//  main2.swift
//  10-观察者模式
//
//  Created by sengshuaibin on 2021/3/30.
//

import Cocoa

protocol Subject {
    var observes: [Observe] { get set }
    var subjectState: String { get set }
    
    func attach(observe: Observe)
    func detach(observe: Observe)
    func notify()
}

protocol Observe {
    var name: String { get set }
    var sub: Subject { get set }
    
    func update()
}

class main2: NSObject {
    
    static func main() {
        let boss = Boss(subjectState: "老板回来了")
        
        let lookStockColleague = StockObserve(name: "小明", sub: boss)
        let lookNBAColleague = NBAObserve(name: "小方", sub: boss)
        
        boss.attach(observe: lookStockColleague)
        boss.attach(observe: lookNBAColleague)
        
        boss.notify()
    }

    class Boss: Subject {
        var observes: [Observe]
        
        var subjectState: String
        
        init(subjectState: String) {
            observes = []
            self.subjectState = subjectState
        }
        
        func attach(observe: Observe) {
            observes.append(observe)
        }
        
        func detach(observe: Observe) {
            observes.removeAll { (item) -> Bool in
                item.name == observe.name
            }
        }
        
        func notify() {
            observes.forEach { (item) in
                item.update()
            }
        }
    }
    
    //秘书类同Boss类
    class Secretary: Subject {
        var observes: [Observe]
        
        var subjectState: String
        
        init(subjectState: String) {
            observes = []
            self.subjectState = subjectState
        }
        
        func attach(observe: Observe) {
            observes.append(observe)
        }
        
        func detach(observe: Observe) {
            observes.removeAll { (item) -> Bool in
                item.name == observe.name
            }
        }
        
        func notify() {
            observes.forEach { (item) in
                item.update()
            }
        }
    }
    
    class StockObserve: Observe {
        var name: String
        
        var sub: Subject
        
        init(name: String, sub: Subject) {
            self.name = name
            self.sub = sub
        }
        
        func update() {
            print("\(sub.subjectState), \(name)关闭股票行情，继续工作")
        }
    }
    
    class NBAObserve: Observe {
        var name: String
        
        var sub: Subject
        
        init(name: String, sub: Subject) {
            self.name = name
            self.sub = sub
        }
        
        func update() {
            print("\(sub.subjectState), \(name)关闭NBA直播，继续工作")
        }
    }
}
