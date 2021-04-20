//
//  main1.swift
//  24-访问者模式
//
//  Created by sengshuaibin on 2021/4/15.
//

import Cocoa

//protocol Person {
//    var action: String { set get }
//    
//    func getConclusion()
//}
//
//class main1: NSObject {
//    static func main() {
//        var persons: [Person] = []
//        
//        let man = Man()
//        man.action = "成功"
//        persons.append(man)
//        let woman = Woman()
//        woman.action = "成功"
//        persons.append(woman)
//        
//        let man1 = Man()
//        man1.action = "失败"
//        persons.append(man1)
//        let woman1 = Woman()
//        woman1.action = "失败"
//        persons.append(woman1)
//        
//        let man2 = Man()
//        man2.action = "恋爱"
//        persons.append(man2)
//        let woman2 = Woman()
//        woman2.action = "恋爱"
//        persons.append(woman2)
//        
//        
//        for item in persons {
//            item.getConclusion()
//        }
//    }
//    
//    class Man: Person {
//        var action: String = ""
//        
//        func getConclusion() {
//            if action == "成功" {
//                print("\(Self.self) \(action)时，背后多半有一个伟大的女人")
//            } else if action == "失败" {
//                print("\(Self.self) \(action)时，闷头喝酒谁也不用劝")
//            } else if action == "恋爱" {
//                print("\(Self.self) \(action)时，凡事不懂也要装懂")
//            }
//        }
//    }
//    
//    class Woman: Person {
//        var action: String = ""
//        
//        func getConclusion() {
//            if action == "成功" {
//                print("\(Self.self) \(action)时，背后大多有一个不成功的男人")
//            } else if action == "失败" {
//                print("\(Self.self) \(action)时，眼泪汪汪谁也劝不了")
//            } else if action == "恋爱" {
//                print("\(Self.self) \(action)时，懂也装不懂")
//            }
//        }
//    }
//}
