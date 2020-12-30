//
//  main.swift
//  1-简单工厂模式
//
//  Created by Link on 2020/12/24.
//

import Foundation


func calculate() {
    print(inputANumber())
}

calculate()


func inputANumber() -> Float {
    print("请输入一个数")
    let inputA = String(data: FileHandle.standardInput.availableData, encoding: .utf8)
    guard var strA = inputA else { return 0 }
    strA.removeLast()
    guard let numberA = Float(strA) else { return 0 }
    return numberA
}
