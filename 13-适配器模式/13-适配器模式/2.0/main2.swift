//
//  main2.swift
//  13-适配器模式
//
//  Created by sengshuaibin on 2021/4/8.
//

import Cocoa

protocol Player {
    var name: String { set get }
    
    func attack()
    func defense()
}

class main2: NSObject {
    
    class Forwards: Player {
        var name: String
        
        init(name: String) {
            self.name = name
        }
        
        func attack() {
            print("前锋\(name)进攻")
        }
        
        func defense() {
            print("前锋\(name)防守")
        }
    }
    
    class ForeignCenter {
        var name: String
        
        init(name: String) {
            self.name = name
        }
        
        func 进攻() {
            print("外籍中锋\(name)进攻")
        }
        
        func 防守() {
            print("外籍中锋\(name)防守")
        }
    }
    
    class Translator: Player {
        var name: String
        var foreignCenter: ForeignCenter
        
        init(name: String) {
            self.name = name
            foreignCenter = ForeignCenter(name: name)
        }
        
        func attack() {
            foreignCenter.进攻()
        }
        
        func defense() {
            foreignCenter.防守()
        }
    }
    
    static func main() {
        let b = Forwards(name: "巴蒂尔")
        b.attack()
        
        let ym = Translator(name: "姚明")
        ym.attack()
        ym.defense()
        
    }
}
