//
//  main.swift
//  1-简单工厂模式
//
//  Created by Link on 2020/12/24.
//

import Foundation

class Main2 {
static func calculate() {
    let numberA = InputManager.inputNumber()
    let operatorChar = InputManager.inputOperator()
    let numberB = InputManager.inputNumber()
    
    let result = Operation.result(numberA, numberB, operatorChar)
    
    print("result = \(result)")
}
    
    
class Operation {
    static func result(_ numberA: Float, _ numberB: Float, _ operatorChar: String) -> Float? {
        var result: Float = 0
        
        if operatorChar == "+" {
            result = numberA + numberB
        } else if operatorChar == "-" {
            result = numberA - numberB
        } else if operatorChar == "*" {
            result = numberA * numberB
        } else if operatorChar == "/" {
            if numberB != 0 {
                result = numberA / numberB
            } else {
                print("除数不能为0！")
                return nil
            }
            
        } else {
            print("操作符不正确！")
            return nil
        }
        return result
    }
}
}
