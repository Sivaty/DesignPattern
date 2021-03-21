//
//  main.swift
//  1-简单工厂模式
//
//  Created by Link on 2020/12/24.
//

import Foundation

class Main3 {
static func calculate() {
    let numberA = InputManager.inputNumber()
    let operatorChar = InputManager.inputOperator()
    let numberB = InputManager.inputNumber()

    let operate = OperationFactory.creatOperate(operatorChar)
    operate?.numberA = numberA
    operate?.numberB = numberB
    print("result = \(operate?.result())")
}

class OperationFactory {
    static func creatOperate(_ operatorChar: String) -> Operation? {
        var result: Operation?
        
        if operatorChar == "+" {
            result = OperationAdd()
        } else if operatorChar == "-" {
            result = OperationSubtract()
        } else if operatorChar == "*" {
            result = OperationMultiply()
        } else if operatorChar == "/" {
            result = OperationDivide()
        } else {
            print("操作符不正确！")
            return nil
        }
        return result
    }
}

class Operation {
    var numberA: Float = 0
    var numberB: Float = 0
    
    func result() -> Float? {
        fatalError("Must Override")
    }
}

class OperationAdd: Operation {
    override func result() -> Float? {
        return numberA + numberB
    }
}

class OperationSubtract: Operation {
    override func result() -> Float? {
        return numberA - numberB
    }
}

class OperationMultiply: Operation {
    override func result() -> Float? {
        return numberA * numberB
    }
}

class OperationDivide: Operation {
    override func result() -> Float? {
        if numberB == 0 {
            print("除数不能为0！")
            return nil
        }
        return numberA / numberB
    }
}
}
