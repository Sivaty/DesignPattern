//
//  main1.swift
//  3-装饰模式
//
//  Created by sengshuaibin on 2021/3/25.
//

import Cocoa

class main1: NSObject {

static func showDecorator() {
    print("装扮1")
    let ming = Person(name: "小明")
    ming.wearTShirt()
    ming.wearBigTrouser()
    ming.wearSneaker()
    ming.show()
    
    print("")
    print("装扮2")
    ming.wearSuit()
    ming.wearTie()
    ming.wearLeatherShoes()
    ming.show()
}

class Person {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func wearTShirt() {
        print("大T恤")
    }
    
    func wearBigTrouser() {
        print("大垮裤")
    }
    
    func wearSneaker() {
        print("破球鞋")
    }
    
    func wearSuit() {
        print("西装")
    }
    
    func wearTie() {
        print("领带")
    }
    
    func wearLeatherShoes() {
        print("皮鞋")
    }
    
    func show() {
        print("装扮的\(name)")
    }
    
}



}
