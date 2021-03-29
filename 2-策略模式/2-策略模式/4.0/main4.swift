//
//  main4.swift
//  2-策略模式
//
//  Created by sengshuaibin on 2021/3/24.
//

import Cocoa

class main4: NSObject {
    
class CashierSystem {
    static var totalPrice: Float = 0
    
    static func calculateTotalPrice(commodityName: String, unitPrice: Float, number: Int, type: String) {

        let cashContext = CashContext(type: type)
        var singleCommodityTotalPrice = unitPrice * Float(number)
        singleCommodityTotalPrice = cashContext.getResult(money: singleCommodityTotalPrice)
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

class CashContext {
    let cash: CashProtocol
    
    init(type: String) {
        switch type {
        case "正常收费":
            self.cash = CashNormal()
        case "打8折":
            self.cash = CashDiscount(discount: 0.8)
        case "满300返100":
            self.cash = CashReturn(moneyCondition: 300, moneyReturn: 100)
        default:
            self.cash = CashNormal()
        }
    }
    
    func getResult(money: Float) -> Float {
        cash.acceptCash(money: money)
    }
}
    
}
