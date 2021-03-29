//
//  Decorator.swift
//  3-装饰模式
//
//  Created by sengshuaibin on 2021/3/25.
//

import Cocoa

protocol Component {
    func operation()
}

class Decorator: NSObject {

static func showDecorator() {
    let c = ConcreteComponent()
    let d1 = ConcreteDecoratorA(component: c)
    let d2 = ConcreteDecoratorB(component: d1)
    
    d2.operation()
}

class ConcreteComponent: Component {
    func operation() {
        print("具体对象的操作")
    }
}

class Decorator: Component {
    let component: Component
    
    init(component: Component) {
        self.component = component
    }
    
    func operation() {
        component.operation()
    }
}

class ConcreteDecoratorA: Decorator {
    //A特有的装饰属性
    var addedState: String = ""
    
    override func operation() {
        super.operation()
        addedState = "new state"
        print("具体装饰对象A的操作")
    }
}

class ConcreteDecoratorB: Decorator {
    override func operation() {
        super.operation()
        addedBehavior()
        print("具体装饰对象B的操作")
    }
    
    //B特有的装饰方法
    func addedBehavior() { }
}
}
