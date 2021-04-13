//
//  main1.swift
//  16-迭代器模式
//
//  Created by sengshuaibin on 2021/4/12.
//

import Cocoa

protocol Iterator {
    func first() -> Any
    func next() -> Any?
    func isDone() -> Bool
    func currentItem() -> Any
}

protocol Aggregate {
    func createIterator() -> Iterator
}

class main1: NSObject {
    static func main() {
        let concreteAggregate = ConcreteAggregate()
        concreteAggregate[0] = "小明"
        concreteAggregate[1] = "小方"
        
        let concreteIterator = ConcreteIterator(concreteAggregate: concreteAggregate)
        while !concreteIterator.isDone() {
            print(concreteIterator.currentItem())
            concreteIterator.next()
        }
    }
    
    class ConcreteIterator: Iterator {
        let concreteAggregate: ConcreteAggregate
        
        var current = 0
        
        init(concreteAggregate: ConcreteAggregate) {
            self.concreteAggregate = concreteAggregate
        }
        
        func first() -> Any {
            concreteAggregate[0]
        }
        
        func next() -> Any? {
            current += 1
            if current < concreteAggregate.count() {
                return concreteAggregate[current]
            }
            return nil
        }
        
        
        func isDone() -> Bool {
            current >= concreteAggregate.count()
        }
        
        func currentItem() -> Any {
            concreteAggregate[current]
        }
    }
    
    class ConcreteAggregate: Aggregate {
        var items: [Any] = []
        
        func createIterator() -> Iterator {
            ConcreteIterator(concreteAggregate: self)
        }
        
        func count() -> Int {
            items.count
        }
        
        subscript(index: Int) -> Any {
            get {
                items[index]
            }
            
            set {
                //此处为伪代码
                items[index] = newValue
            }
        }
    }
}
