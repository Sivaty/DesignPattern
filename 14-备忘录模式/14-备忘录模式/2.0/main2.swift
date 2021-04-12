//
//  main2.swift
//  14-备忘录模式
//
//  Created by sengshuaibin on 2021/4/9.
//

import Cocoa

class main2: NSObject {
    
static func main() {
    let o = Originator()
    o.state = "On"
    o.show()
    
    let c = Caretaker()
    c.memento = o.createMemento()
    
    o.state = "off"
    o.show()
    
    o.setMemento(memento: c.memento)
    o.show()
}

class Originator {
    var state = ""
    
    func createMemento() -> Memento {
        Memento(state: state)
    }
    
    func setMemento(memento: Memento) {
        state = memento.state
    }
    
    func show() {
        print("state = \(state)")
    }
}

class Memento {
    var state: String
    
    init(state: String) {
        self.state = state
    }
}

class Caretaker {
    var memento = Memento(state: "")
}
    
}
