//
//  main2.swift
//  24-访问者模式
//
//  Created by sengshuaibin on 2021/4/15.
//

import Cocoa

protocol Action {
    func getManConclusion(man: Man)
    
    func getWomanConclusion(woman: Woman)
}

protocol Person {
    func accept(visitor: Action)
}

class Man: Person {
    func accept(visitor: Action) {
        visitor.getManConclusion(man: self)
    }
}

class Woman: Person {
    func accept(visitor: Action) {
        visitor.getWomanConclusion(woman: self)
    }
}

class Success: Action {
    func getManConclusion(man: Man) {
        print("\(man.self) \(Self.self)时，背后多半有一个伟大的女人")
    }
    
    func getWomanConclusion(woman: Woman) {
        print("\(woman.self) \(Self.self)时，背后大多有一个不成功的男人")
    }
}

class Failing: Action {
    func getManConclusion(man: Man) {
        print("\(man.self) \(Self.self)时，闷头喝酒谁也不用劝")
    }
    
    func getWomanConclusion(woman: Woman) {
        print("\(woman.self) \(Self.self)时，眼泪汪汪谁也劝不了")
    }
}

class Amativeness: Action {
    func getManConclusion(man: Man) {
        print("\(man.self) \(Self.self)时，凡事不懂也要装懂")
    }
    
    func getWomanConclusion(woman: Woman) {
        print("\(woman.self) \(Self.self)时，懂也装不懂")
    }
}

class ObjectStructure {
    var persons: [Person] = []
    
    func attach(person: Person) {
        persons.append(person)
    }
    
    func display(visitor: Action) {
        for item in persons {
            item.accept(visitor: visitor)
        }
    }
}

class main2: NSObject {
    static func main() {
        let o = ObjectStructure()
        o.attach(person: Man())
        o.attach(person: Woman())
        
        o.display(visitor: Success())
        o.display(visitor: Failing())
        o.display(visitor: Amativeness())
    }
}
