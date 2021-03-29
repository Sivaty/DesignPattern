//
//  main3.swift
//  2-策略模式
//
//  Created by sengshuaibin on 2021/3/23.
//

import Cocoa

protocol CashProtocol {
    func acceptCash(money: Float) -> Float
}

class main3: NSObject {
    
class CashierSystem {
    static var totalPrice: Float = 0
    
    static func calculateTotalPrice(commodityName: String, unitPrice: Float, number: Int, type: String) {

        let cashAccept = CashFctory.creatCashAccept(type: type)
        var singleCommodityTotalPrice = unitPrice * Float(number)
        singleCommodityTotalPrice = cashAccept.acceptCash(money: singleCommodityTotalPrice)
        totalPrice += singleCommodityTotalPrice
        
        print("商品：\(commodityName)，价格：\(unitPrice) * \(number)个 = \(singleCommodityTotalPrice)")
        print("总价为：\(totalPrice)")
    }
    
    static func reset() {
        totalPrice = 0
    }
}

class CashNormal: CashProtocol {
    func acceptCash(money: Float) -> Float {
        return money
    }
}

class CashDiscount: CashProtocol {
    ///折扣
    let discount: Float
    
    init(discount: Float) {
        self.discount = discount
    }
    
    func acceptCash(money: Float) -> Float {
        return money * discount
    }
}

class CashReturn: CashProtocol {
    ///满减条件金额
    let moneyCondition: Float
    ///满减金额
    let moneyReturn: Float
    
    init(moneyCondition: Float, moneyReturn: Float) {
        self.moneyCondition = moneyCondition
        self.moneyReturn = moneyReturn
    }
    
    func acceptCash(money: Float) -> Float {
        var result = money
        if money > moneyCondition {
            result = floor(money / moneyCondition) * moneyReturn
        }
        return result
    }
}

class CashFctory {
    static func creatCashAccept(type: String) -> CashProtocol {
        var cash: CashProtocol = CashNormal()
        switch type {
        case "正常收费":
            cash = CashNormal()
        case "打8折":
            cash = CashDiscount(discount: 0.8)
        case "满300返100":
            cash = CashReturn(moneyCondition: 300, moneyReturn: 100)
        default:
            break
        }
        return cash
    }
}
    
}
