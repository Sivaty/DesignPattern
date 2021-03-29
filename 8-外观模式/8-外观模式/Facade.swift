//
//  Facade.swift
//  8-外观模式
//
//  Created by sengshuaibin on 2021/3/29.
//

import Cocoa

class Facade {
    let systemA = SubSystemA()
    let systemB = SubSystemB()
    let systemC = SubSystemC()
    let systemD = SubSystemD()
    
    func methodA() {
        systemA.method()
        systemB.method()
    }
    
    func methodB() {
        systemC.method()
        systemD.method()
    }
}

class SubSystemA {
    func method() {
        print(#function)
    }
}

class SubSystemB {
    func method() {
        print(#function)
    }
}

class SubSystemC {
    func method() {
        print(#function)
    }
}

class SubSystemD {
    func method() {
        print(#function)
    }
}
