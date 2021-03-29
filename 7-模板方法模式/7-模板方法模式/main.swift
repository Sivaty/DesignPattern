//
//  main.swift
//  7-模板方法模式
//
//  Created by sengshuaibin on 2021/3/29.
//

import Foundation


class UIViewController {
    func viewWillAppear(_ animated: Bool) {
        
    }

    func viewDidAppear(_ animated: Bool) {
        
    }

    func viewWillDisappear(_ animated: Bool) {
        
    }

    func viewDidDisappear(_ animated: Bool) {
        
    }
    
    func viewDidLoad() {
        
    }
}

class CustomViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
    }

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}


