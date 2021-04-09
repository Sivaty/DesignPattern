//
//  main3.swift
//  12-状态模式
//
//  Created by sengshuaibin on 2021/4/7.
//

import Cocoa

//protocol State {
//    func handle(context: Context)
//}
//
//class ConcreteStateA: State {
//    func handle(context: Context) {
//        context.state = ConcreteStateB()
//    }
//}
//
//class ConcreteStateB: State {
//    func handle(context: Context) {
//        context.state = ConcreteStateA()
//    }
//}
//
//class Context {
//    var state: State {
//        willSet {
//            print(newValue)
//        }
//    }
//
//    init(state: State) {
//        self.state = state
//    }
//
//    func request() {
//        state.handle(context: self)
//    }
//}
//
//class main3: NSObject {
//    static func main() {
//        let c = Context(state: ConcreteStateA())
//
//        c.request()
//        c.request()
//    }
//}
