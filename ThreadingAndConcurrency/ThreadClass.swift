//
//  ThreadClass.swift
//  TreeSwift
//
//  Created by sunil.kumar1 on 8/1/19.
//  Copyright © 2019 sunil.kumar1. All rights reserved.
//

import UIKit

class ThreadClass: NSObject {
    
    override init() {
        super.init()
        self.createGCD()
    }
    
    func createGCD()  {
        DispatchQueue.main.async {
            print("A")
            DispatchQueue.main.async {
                print("B")
            }
            DispatchQueue.main.async {
                print("C")
            }
        }
        DispatchQueue.main.async {
            print("D")
        }
        
        DispatchQueue.global(qos: .utility).async {
            print("E")
        }
    }

}
