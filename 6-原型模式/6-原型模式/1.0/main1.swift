//
//  main1.swift
//  6-原型模式
//
//  Created by sengshuaibin on 2021/3/26.
//

import Cocoa

class main1: NSObject {
    static func main() {
        let resume1 = Resume()
        resume1.name = "link"
        resume1.age = 10
        
        let resume2 = resume1.copy()
        print(resume2)
    }
    
    class Resume: NSCopying {
        var name = ""
        var age = 0
        
        func copy(with zone: NSZone? = nil) -> Any {
            let newResume = Resume()
            newResume.name = name
            newResume.age = age
            return newResume
        }
    }
}
