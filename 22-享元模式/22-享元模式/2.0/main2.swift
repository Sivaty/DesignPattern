//
//  main2.swift
//  22-享元模式
//
//  Created by sengshuaibin on 2021/4/14.
//

import Cocoa

protocol WebSite {
    func use(user: User)
}

class User {
    let name: String
    init(name: String) {
        self.name = name
    }
}

class main2: NSObject {
    static func main() {
        let f = WebSiteFactory()
        
        let fx = f.getWebSiteCategary(key: "产品展示")
        fx.use(user: User(name: "小X"))
        
        let fy = f.getWebSiteCategary(key: "产品展示")
        fy.use(user: User(name: "小Y"))
        
        let fz = f.getWebSiteCategary(key: "产品展示")
        fz.use(user: User(name: "小Z"))
        
        let fl = f.getWebSiteCategary(key: "博客")
        fl.use(user: User(name: "小L"))
        
        print("网站分类总数为: \(f.getWebSiteCount())")
    }
    
    class ConcreteWebSite: WebSite {
        let name: String
        init(name: String) {
            self.name = name
        }
        
        func use(user: User) {
            print("网站分类：\(name)，用户: \(user.name)")
        }
    }
    
    class WebSiteFactory {
        var flyweights: [String: WebSite] = [:]
        
        func getWebSiteCategary(key: String) -> WebSite {
            if flyweights[key] == nil {
                flyweights[key] = ConcreteWebSite(name: key)
            }
            return flyweights[key] ?? ConcreteWebSite(name: key)
        }
        
        func getWebSiteCount() -> Int {
            flyweights.values.count
        }
    }
}
