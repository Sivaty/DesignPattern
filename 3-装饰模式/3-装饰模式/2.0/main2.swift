//
//  main2.swift
//  3-装饰模式
//
//  Created by sengshuaibin on 2021/3/25.
//

import Cocoa

protocol Finery {
    func show()
}

class main2: NSObject {

static func showDecorator() {
    let ming = Person(name: "小明")
    print("第一种装扮")
    let _ = TShirt().show()
    let _ = BigTrouser().show()
    let _ = Sneaker().show()
    ming.show()
    
    print("")
    print("第二种装扮")
    let _ = Suit().show()
    let _ = Tie().show()
    let _ = LeatherShoes().show()
    ming.show()
}

class Person {
    var name: String = ""
    
    init() { }
    init(name: String) {
        self.name = name
    }
    
    func show() {
        print("装扮的\(name)")
    }
}

class TShirt: Finery {
    func show() {
        print("大T恤")
    }
}

class BigTrouser: Finery {
    func show() {
        print("大垮裤")
    }
}

class Sneaker: Finery {
    func show() {
        print("破球鞋")
    }
}

class Suit: Finery {
    func show() {
        print("西装")
    }
}

class Tie: Finery {
    func show() {
        print("领带")
    }
}

class LeatherShoes: Finery {
    func show() {
        print("皮鞋")
    }
}
}
