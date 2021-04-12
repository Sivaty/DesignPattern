//
//  main1.swift
//  14-备忘录模式
//
//  Created by sengshuaibin on 2021/4/9.
//

import Cocoa

class main1: NSObject {
    
    static func main() {
        let lixiaoyao = GameRole()
        lixiaoyao.initState()
        lixiaoyao.stateDisplay()
        
        //保存进度
        let backup = GameRole()
        backup.vit = lixiaoyao.vit
        backup.atk = lixiaoyao.atk
        backup.def = lixiaoyao.def
        
        //大战boss
        lixiaoyao.fight()
        lixiaoyao.stateDisplay()
        
        //恢复进度
        lixiaoyao.vit = backup.vit
        lixiaoyao.atk = backup.atk
        lixiaoyao.def = backup.def
        
        lixiaoyao.stateDisplay()
    }

    class GameRole {
        var vit: Int = 0
        var atk: Int = 0
        var def: Int = 0
        
        func stateDisplay() {
            print("角色当前状态：")
            print("体力：\(vit)")
            print("攻击力：\(atk)")
            print("防御力：\(def)")
            print("")
        }
        
        func initState() {
            vit = 100
            atk = 100
            def = 100
        }
        
        func fight() {
            vit = 0
            atk = 0
            def = 0
        }
        
    }
}
