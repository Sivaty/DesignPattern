//
//  main3.swift
//  3-装饰模式
//
//  Created by sengshuaibin on 2021/3/25.
//

import Cocoa

class main3: NSObject {

static func showDecorator() {
    let ming = Person(name: "小明")
    
    print("第一种装扮")
    let wearTShirt = TShirt(component: ming)
    let wearBigTrouser = BigTrouser(component: wearTShirt)
    let wearSneaker = Sneaker(component: wearBigTrouser)
    wearSneaker.show()
    
    print("")
    print("第二种装扮")
    let wearSuit = Suit(component: ming)
    let wearTie = Tie(component: wearSuit)
    let wearLeatherShoes = LeatherShoes(component: wearTie)
    wearLeatherShoes.show()
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

class Finery: Person {
    var component: Person?
    
    convenience init(component: Person) {
        self.init()
        self.component = component
    }
    
    override func show() {
        component?.show()
    }
}

class TShirt: Finery {
    override func show() {
        print("大T恤")
        super.show()
    }
}

class BigTrouser: Finery {
    override func show() {
        print("大垮裤")
        super.show()
    }
}

class Sneaker: Finery {
    override func show() {
        print("破球鞋")
        super.show()
    }
}

class Suit: Finery {
    override func show() {
        print("西装")
        super.show()
    }
}

class Tie: Finery {
    override func show() {
        print("领带")
        super.show()
    }
}

class LeatherShoes: Finery {
    override func show() {
        print("皮鞋")
        super.show()
    }
}
}
