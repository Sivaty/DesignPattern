//
//  main1.swift
//  15-组合模式
//
//  Created by sengshuaibin on 2021/4/9.
//

import Cocoa

protocol Component {
    var name: String { get set }
    
    func add(c: Component)
    func remove(c: Component)
    func display(depth: Int)
}

class main1: NSObject {
    
    static func main() {
        let root = Composite(name: "root")
        root.add(c: Leaf(name: "leaf a"))
        root.add(c: Leaf(name: "leaf b"))
        
        let comp = Composite(name: "x")
        comp.add(c: Leaf(name: "leaf xa"))
        comp.add(c: Leaf(name: "leaf xb"))
        
        root.add(c: comp)
        
        let comp2 = Composite(name: "xx")
        comp2.add(c: Leaf(name: "leaf xxa"))
        comp2.add(c: Leaf(name: "leaf xxb"))
        
        comp.add(c: comp2)
        
        root.add(c: Leaf(name: "leaf c"))
        
        let leaf = Leaf(name: "leaf d")
        root.add(c: leaf)
        root.remove(c: leaf)
        
        root.display(depth: 1)
        
    }

    class Leaf: Component {
        var name: String
        
        init(name: String) {
            self.name = name
        }
        
        func add(c: Component) {
            print("Cannot add to a leaf")
        }
        
        func remove(c: Component) {
            print("Cannot remove from a leaf")
        }
        
        func display(depth: Int) {
            var depthString = ""
            for _ in 1...depth {
                depthString.append("-")
            }
            
            print(depthString + name)
        }
    }
    
    class Composite: Component {
        var name: String
        var children: [Component] = []
        
        init(name: String) {
            self.name = name
        }
        
        func add(c: Component) {
            children.append(c)
        }
        
        func remove(c: Component) {
            children.removeAll { (component) -> Bool in
                component.name == c.name
            }
        }
        
        func display(depth: Int) {
            var depthString = ""
            for _ in 1...depth {
                depthString.append("-")
            }
            
            print(depthString + name)
            for item in children {
                item.display(depth: depth + 2)
            }
        }
        
        
    }
}
