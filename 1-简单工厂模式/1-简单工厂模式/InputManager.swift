//
//  InputManager.swift
//  1-简单工厂模式
//
//  Created by sengshuaibin on 2021/1/13.
//

import Foundation

class InputManager {
    static func inputNumber() -> Float {
        print("请输入一个数：")
        let input = String(data: FileHandle.standardInput.availableData, encoding: .utf8)
        guard var string = input else { return 0 }
        string.removeLast()
        guard let number = Float(string) else { return 0 }
        return number
    }
    
    static func inputOperator() -> String {
        print("请输入一个运算符号(+、-、*、/)：")
        let input = String(data: FileHandle.standardInput.availableData, encoding: .utf8)
        guard var string = input else { return "" }
        string.removeLast()
        return string
    }
}
