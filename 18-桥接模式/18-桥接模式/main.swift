//
//  main.swift
//  18-桥接模式
//
//  Created by sengshuaibin on 2021/4/12.
//

import Foundation

protocol Implementor {
    func operation()
}

class ConcreteImplementorA: Implementor {
    func operation() {
        print("具体实现A的方法执行")
    }
}

class ConcreteImplementorB: Implementor {
    func operation() {
        print("具体实现B的方法执行")
    }
}

class Abstraction {
    var implementor: Implementor = ConcreteImplementorA()
    
    func operation() {
        implementor.operation()
    }
}

class RefinedAbstraction: Abstraction {
    override func operation() {
        implementor.operation()
    }
}

func main() {
    let cb = RefinedAbstraction()
    
    cb.implementor = ConcreteImplementorA()
    cb.operation()
    
    cb.implementor = ConcreteImplementorB()
    cb.operation()
}
main()
