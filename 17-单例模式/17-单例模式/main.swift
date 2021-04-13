//
//  main.swift
//  17-单例模式
//
//  Created by sengshuaibin on 2021/4/12.
//

import Foundation

class Person {
    static let sharedInstance = Person()
    private init() {}
}

