//
//  main1.swift
//  21-中介者模式
//
//  Created by sengshuaibin on 2021/4/13.
//

import Cocoa

protocol Mediator {
    func send(message: String, colleague: Colleague)
}

protocol Colleague {
    var mediator: Mediator { set get }
}

class main1: NSObject {
    static func main() {
        let concreteMediator = ConcreteMediator()
        let c1 = ConcreteColleague1(mediator: concreteMediator)
        let c2 = ConcreteColleague2(mediator: concreteMediator)
        
        concreteMediator.colleague1 = c1
        concreteMediator.colleague2 = c2
        
        c1.send(message: "你吃饭了么？")
        c2.send(message: "没有，你打算请客？")
    }
    
    class ConcreteMediator: Mediator {
        
        var colleague1: ConcreteColleague1?
        var colleague2: ConcreteColleague2?
        
        func send(message: String, colleague: Colleague) {
            if colleague is ConcreteColleague1 {
                colleague2?.notify(message: message)
            } else {
                colleague1?.notify(message: message)
            }
        }
    }
    
    class ConcreteColleague1: Colleague {
        var mediator: Mediator
        
        init(mediator: Mediator) {
            self.mediator = mediator
        }
        
        func send(message: String) {
            mediator.send(message: message, colleague: self)
        }
        
        func notify(message: String) {
            print("同事1得到消息:\(message)")
        }
    }
    
    class ConcreteColleague2: Colleague {
        var mediator: Mediator
        
        init(mediator: Mediator) {
            self.mediator = mediator
        }
        
        func send(message: String) {
            mediator.send(message: message, colleague: self)
        }
        
        func notify(message: String) {
            print("同事2得到消息:\(message)")
        }
    }
}
