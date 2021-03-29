//
//  main.swift
//  9-建造者模式
//
//  Created by sengshuaibin on 2021/3/29.
//

import Foundation

protocol PersonBuilder {
    func buildHead()
    func buildBody()
    func buildArm()
    func buildLeg()
}

class PersonThinBuilder: PersonBuilder {
    func buildHead() {
        print("创建瘦的头")
    }
    
    func buildBody() {
        print("创建瘦的身体")
    }
    
    func buildArm() {
        print("创建瘦的手")
    }
    
    func buildLeg() {
        print("创建瘦的脚")
    }
}

class PersonFatBuilder: PersonBuilder {
    func buildHead() {
        print("创建胖的头")
    }
    
    func buildBody() {
        print("创建胖的身体")
    }
    
    func buildArm() {
        print("创建胖的手")
    }
    
    func buildLeg() {
        print("创建胖的脚")
    }
}

class PersonDirector {
    let pb: PersonBuilder
    
    init(_ pb: PersonBuilder) {
        self.pb = pb
    }
    
    func createPerson() {
        pb.buildHead()
        pb.buildBody()
        pb.buildArm()
        pb.buildLeg()
    }
}

func main() {
    let pb = PersonThinBuilder()
    let pd = PersonDirector(pb)
    pd.createPerson()
}
