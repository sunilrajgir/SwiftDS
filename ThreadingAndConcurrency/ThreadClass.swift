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
        
        Thread.printCurrent()
        
        if !Thread.current.isMainThread {
            DispatchQueue.main.sync {
                print("A")
            }
        }
        
        
        DispatchQueue.main.async {
            print("B")
            
//            DispatchQueue.main.sync {
//                print("C")
//            }
            
            DispatchQueue.main.async {
                print("D")
            }
        }
        
        DispatchQueue.main.async { // always serial queue
            Thread.printCurrent()
            print("E")
        }
                
        DispatchQueue.global(qos: .utility).async {  // always Concurrent Queue
            Thread.printCurrent()
            DispatchQueue.main.sync {
                  print("F")
            }
            print("G")
        }
        
        DispatchQueue(label: "SunilKumar").async { // serial queue
            Thread.printCurrent()
               DispatchQueue.main.sync {
                     print("H")
               }
        }
        
        
        let queue = DispatchQueue(label: "Sunil", qos: .background, attributes: .concurrent, autoreleaseFrequency: .inherit, target: nil)
        
        queue.async {  //  concurrent queue
            Thread.printCurrent()
            DispatchQueue.main.sync {
                print("I")
            }
        }
    }

}

extension Thread {
    class func printCurrent() {
        print("\r⚡️: \(Thread.current)\r" + "🏭: \(OperationQueue.current?.underlyingQueue?.label ?? "None")\r")
    }
}
