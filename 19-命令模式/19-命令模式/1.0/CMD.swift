//
//  main1.swift
//  19-命令模式
//
//  Created by sengshuaibin on 2021/4/12.
//

import Cocoa

class Barbecuer {
    func bakeMutton() {
        print("烤羊肉串")
    }
    
    func bakeChickenWing() {
        print("烤鸡翅")
    }
}

protocol Command {
    var receiver: Barbecuer { get set }
    
    func excuteCommand()
}

class BakeMuttonCommand: Command {
    var receiver: Barbecuer
    
    init(receiver: Barbecuer) {
        self.receiver = receiver
    }
    
    func excuteCommand() {
        receiver.bakeMutton()
    }
}

class BakeChickenWingCommand: Command {
    var receiver: Barbecuer
    
    init(receiver: Barbecuer) {
        self.receiver = receiver
    }
    
    func excuteCommand() {
        receiver.bakeChickenWing()
    }
}

class Waiter {
    var orders: [Command] = []
    
    func setOrder(command: Command) {
        if command is BakeChickenWingCommand {
            print("服务员：烤鸡翅没有了")
        } else if command is BakeMuttonCommand {
            orders.append(command)
            print("增加订单：烤羊肉串 时间：\(Date())")
        }
    }
    
    func notify() {
        for item in orders {
            item.excuteCommand()
        }
    }
}

class CMD: NSObject {
    static func main() {
        let boy = Barbecuer()
        let bakeMuttonCommand1 = BakeMuttonCommand(receiver: boy)
        let bakeMuttonCommand2 = BakeMuttonCommand(receiver: boy)
        let bakeChickenWingCommand1 = BakeChickenWingCommand(receiver: boy)
        
        let girl = Waiter()
        
        girl.setOrder(command: bakeMuttonCommand1)
        girl.setOrder(command: bakeMuttonCommand2)
        girl.setOrder(command: bakeChickenWingCommand1)
        
        girl.notify()
    }
}
