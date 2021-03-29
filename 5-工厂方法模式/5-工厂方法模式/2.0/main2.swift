//
//  main2.swift
//  5-工厂方法模式
//
//  Created by sengshuaibin on 2021/3/26.
//

import Cocoa

protocol LeiFengFctory {
    static func creatLeiFeng() -> LeiFeng
}

class LeiFeng {
    func sendFruit() {
        print("送水果")
    }
    
    func cleaningYard() {
        print("打扫院子")
    }
}

class main2: NSObject {
    static func main() {
        let volunteer = VolunteerFctory.creatLeiFeng()
        volunteer.sendFruit()
        volunteer.cleaningYard()
    }
    
    class Undergraduate: LeiFeng { }
    
    class Volunteer: LeiFeng { }
    
    class UndergraduateFctory: LeiFengFctory {
        static func creatLeiFeng() -> LeiFeng {
            return Undergraduate()
        }
    }
    
    class VolunteerFctory: LeiFengFctory {
        static func creatLeiFeng() -> LeiFeng {
            return Volunteer()
        }
    }
    
}
