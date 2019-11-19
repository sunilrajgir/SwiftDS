//
//  DynamicProgramming.swift
//  TreeSwift
//
//  Created by sunil.kumar1 on 11/19/19.
//  Copyright © 2019 sunil.kumar1. All rights reserved.
//

import UIKit

class DynamicProgramming: NSObject {
    
    override init() {
        super.init()
        let fibNum = self.printFibonacci(num: 6)
        print(fibNum)
    }
    
    func printFibonacci(num:Int) -> Int {
        if num <= 1 {
            return num
        }
        return printFibonacci(num: num-1)+printFibonacci(num: num-2)
    }

}
