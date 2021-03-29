//
//  main.swift
//  4-代理模式
//
//  Created by sengshuaibin on 2021/3/25.
//

import Foundation

protocol GiveGift {
    func giveDolls()
    func giveFlowers()
    func giveChocolate()
}

class Pursuit: GiveGift {
    func giveDolls() {
        print("给小红送洋娃娃")
    }
    
    func giveFlowers() {
        print("给小红送花")
    }
    
    func giveChocolate() {
        print("给小红送巧克力")
    }
}

class Proxy: GiveGift {
    weak var pursuit: Pursuit?
    init(pursuit: Pursuit) {
        self.pursuit = pursuit
    }
    
    func giveDolls() {
        pursuit?.giveDolls()
    }
    
    func giveFlowers() {
        pursuit?.giveFlowers()
    }
    
    func giveChocolate() {
        pursuit?.giveChocolate()
    }
}

func main() {
    let ming = Pursuit()
    let qiang = Proxy(pursuit: ming)
    
    qiang.giveDolls()
    qiang.giveFlowers()
    qiang.giveChocolate()
}

main()
