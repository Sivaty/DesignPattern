//
//  main3.swift
//  14-备忘录模式
//
//  Created by sengshuaibin on 2021/4/9.
//

import Cocoa

class main3: NSObject {
    
static func main() {
    let lixiaoyao = GameRole()
    lixiaoyao.stateDisplay()
    
    //保存进度
    let roleStateCaretaker = RoleStateCaretaker()
    roleStateCaretaker.roleStateMemento = lixiaoyao.createRoleStateMemento()
    
    //大战boss
    lixiaoyao.fight()
    lixiaoyao.stateDisplay()
    
    //恢复进度
    lixiaoyao.recoveryState(roleStateMemento: roleStateCaretaker.roleStateMemento)
    
    lixiaoyao.stateDisplay()
}

class GameRole {
    var vit: Int = 100
    var atk: Int = 100
    var def: Int = 100
    
    func createRoleStateMemento() -> RoleStateMemento {
        RoleStateMemento(vit: vit, atk: atk, def: def)
    }
    
    func recoveryState(roleStateMemento: RoleStateMemento) {
        vit = roleStateMemento.vit
        atk = roleStateMemento.atk
        def = roleStateMemento.def
    }
    
    func stateDisplay() {
        print("角色当前状态：")
        print("体力：\(vit)")
        print("攻击力：\(atk)")
        print("防御力：\(def)")
        print("")
    }
    
    func fight() {
        vit = 0
        atk = 0
        def = 0
    }
}

class RoleStateMemento {
    var vit: Int
    var atk: Int
    var def: Int
    
    init(vit: Int, atk: Int, def: Int) {
        self.vit = vit
        self.atk = atk
        self.def = def
    }
}

class RoleStateCaretaker {
    var roleStateMemento = RoleStateMemento(vit: 0, atk: 0, def: 0)
}
    
}
