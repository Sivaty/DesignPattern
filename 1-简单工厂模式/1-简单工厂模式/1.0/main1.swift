//
//  main.swift
//  1-简单工厂模式
//
//  Created by Link on 2020/12/24.
//

import Foundation

class Main1 {
static func calculate() {
    let a = InputManager.inputNumber()
    let char = InputManager.inputOperator()
    let b = InputManager.inputNumber()
    
    var result: Float = 0
    
    if char == "+" {
        result = a + b
    } else if char == "-" {
        result = a - b
    } else if char == "*" {
        result = a * b
    } else if char == "/" {
        result = a / b
    } else {
        print("操作符不正确！")
        return
    }
    print("result = \(result)")
}
}
