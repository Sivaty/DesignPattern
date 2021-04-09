//
//  main1.swift
//  12-状态模式
//
//  Created by sengshuaibin on 2021/4/7.
//

import Cocoa

class main1: NSObject {
    static var hour = 0
    static var workFinished = false
    
    static func main() {
        hour = 9
        writeProgram()
        hour = 12
        writeProgram()
        hour = 13
        writeProgram()
        hour = 14
        writeProgram()
        hour = 17
        writeProgram()
        
        workFinished = true
        writeProgram()
        
        hour = 19
        writeProgram()
        hour = 22
        writeProgram()
        
    }
    
    static func writeProgram() {
        if hour < 12 {
            print("当前时间 \(hour) 点, 上午工作，精神百倍")
        } else if hour < 13 {
            print("当前时间 \(hour) 点, 吃午饭，犯困")
        } else if hour < 17 {
            print("当前时间 \(hour) 点, 下午状态还行，继续努力")
        } else {
            if workFinished {
                print("当前时间 \(hour) 点, 下班回家")
            } else {
                if hour < 21 {
                    print("当前时间 \(hour) 点, 加班，困")
                } else {
                    print("当前时间 \(hour) 点, 不行了，睡着了")
                }
            }
        }
    }
}
