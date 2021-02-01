//
//  main.swift
//  1-简单工厂模式
//
//  Created by Link on 2020/12/24.
//

import Foundation

class Main1 {
class func calculate() {
    let a = InputManager.inputANumber()
    let char = InputManager.inputAChar()
    let b = InputManager.inputANumber()
    
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
