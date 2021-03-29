//
//  main1.swift
//  2-策略模式
//
//  Created by sengshuaibin on 2021/3/23.
//

import Cocoa

class main1 {

class CashierSystem {
    static var totalPrice: Float = 0
    
    static func calculateTotalPrice(commodityName: String, unitPrice: Float, number: Int) {
        let singleCommodityTotalPrice = unitPrice * Float(number)
        totalPrice += singleCommodityTotalPrice
        
        print("商品：\(commodityName)，价格：\(unitPrice) * \(number)个 = \(singleCommodityTotalPrice)")
        print("总价为：\(totalPrice)")
    }
    
    static func reset() {
        totalPrice = 0
    }
}
}
