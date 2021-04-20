//
//  main1.swift
//  23-解释器模式
//
//  Created by sengshuaibin on 2021/4/15.
//

import Cocoa

protocol AbstractExpression {
    func interpret(context: Context)
}

class TerminalExpression: AbstractExpression {
    func interpret(context: Context) {
        print("终端解释器")
    }
}

class NonterminalExpression: AbstractExpression {
    func interpret(context: Context) {
        print("非终端解释器")
    }
}

class Context {
    var input = ""
    var output = ""
}

class main1: NSObject {
    static func main() {
        let context = Context()
        var array: [AbstractExpression] = []
        array.append(TerminalExpression())
        array.append(NonterminalExpression())
        array.append(TerminalExpression())
        array.append(TerminalExpression())
        
        for item in array {
            item.interpret(context: context)
        }
    }
}
