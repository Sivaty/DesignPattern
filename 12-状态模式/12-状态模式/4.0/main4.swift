//
//  main4.swift
//  12-状态模式
//
//  Created by sengshuaibin on 2021/4/7.
//

import Cocoa

protocol State {
    func writeProgram(work: Work)
}

class Work {
    var currentState: State = ForenoonState()
    var hour: Float = 0
    var workFinished = false
    
    func writeProgram() {
        currentState.writeProgram(work: self)
    }
}

class ForenoonState: State {
    func writeProgram(work: Work) {
        if work.hour < 12 {
            print("当前时间 \(work.hour) 点, 上午工作，精神百倍")
        } else {
            work.currentState = NoonState()
            work.writeProgram()
        }
    }
}

class NoonState: State {
    func writeProgram(work: Work) {
        if work.hour < 13 {
            print("当前时间 \(work.hour) 点, 吃午饭，犯困")
        } else {
            work.currentState = AfternoonState()
            work.writeProgram()
        }
    }
}

class AfternoonState: State {
    func writeProgram(work: Work) {
        if work.hour < 17 {
            print("当前时间 \(work.hour) 点, 下午状态还行，继续努力")
        } else {
            work.currentState = EveningState()
            work.writeProgram()
        }
    }
}

class EveningState: State {
    func writeProgram(work: Work) {
        if work.workFinished {
            print("当前时间 \(work.hour) 点, 下班回家")
        } else {
            if work.hour < 21 {
                print("当前时间 \(work.hour) 点, 加班，困")
            } else {
                work.currentState = SleepState()
                work.writeProgram()
            }
        }
    }
}

class SleepState: State {
    func writeProgram(work: Work) {
        print("当前时间 \(work.hour) 点, 不行了，睡着了")
    }
}


class main4: NSObject {
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
}
