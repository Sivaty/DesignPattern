//
//  main1.swift
//  5-工厂方法模式
//
//  Created by sengshuaibin on 2021/3/26.
//

import Cocoa

//简单工厂模式实现
class main1: NSObject {
    
    static func main() {
        let undergraduate = SimpleFctory.creatLeiFeng(type: "热心大学生")
        undergraduate.sendFruit()
        undergraduate.cleaningYard()
    }

    class LeiFeng {
        func sendFruit() {
            print("送水果")
        }
        
        func cleaningYard() {
            print("打扫院子")
        }
    }
    
    class Undergraduate: LeiFeng { }
    
    class Volunteer: LeiFeng { }
    
    class SimpleFctory {
        static func creatLeiFeng(type: String) -> LeiFeng {
            var leiFeng: LeiFeng = Undergraduate()
            switch type {
            case "热心大学生":
                leiFeng = Undergraduate()
            case "社区志愿者":
                leiFeng = Volunteer()
            default:
                break
            }
            return leiFeng
        }
    }
}
