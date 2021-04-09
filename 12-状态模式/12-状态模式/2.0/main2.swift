//
//  main2.swift
//  12-状态模式
//
//  Created by sengshuaibin on 2021/4/7.
//

import Cocoa

class main2: NSObject {
    static func main() {
        let work = Work()
        work.hour = 9
        work.writeProgram()
        work.hour = 12
        work.writeProgram()
        work.hour = 13
        work.writeProgram()
        work.hour = 14
        work.writeProgram()
        work.hour = 17
        work.writeProgram()
        
        work.workFinished = true
        work.writeProgram()
        
        work.hour = 19
        work.writeProgram()
        work.hour = 22
        work.writeProgram()
    }
    
    class Work {
        var hour = 0
        var workFinished = false
        
        func writeProgram() {
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
}
