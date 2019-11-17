//
//  AppDelegate.swift
//  TreeSwift
//
//  Created by sunil.kumar1 on 6/24/19.
//  Copyright © 2019 sunil.kumar1. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
//        let tree = BinaryTree()
//        tree.createBinaryTree()
//        tree.printTree()
        let p = findPos(pos: 6)
        //testArc()
        //_ = ThreadClass()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


    
    func testArc() {
        testStrong()
        testWeak()
        testUnown()
    }
    
    func testStrong() {
        var kelvin: Person?
        var iphone: Gadget?
         
        kelvin = Person(name: "Kelvin")
        iphone = Gadget(model: "iPhone 8 Plus")
        
        kelvin!.gadget = iphone
        iphone!.owner = kelvin

        kelvin = nil
        iphone = nil
        print("chack")
    }
    
    func testWeak() {
        var kelvin: Person?
        var iphone: GadgetWeak?
         
        kelvin = Person(name: "Kelvin")
        iphone = GadgetWeak(model: "iPhone 8 Plus")
        
        kelvin!.gadgetWeak = iphone
        iphone!.owner = kelvin

        kelvin = nil
        iphone = nil
        print("chack")
    }
    
    func testUnown() {
        var kelvin: Person?
        var iphone: GadgetUnown?
         
        kelvin = Person(name: "Kelvin")
        iphone = GadgetUnown(model: "iPhone 8 Plus", person: kelvin!)
        
        kelvin!.gadgetUnown = iphone
        
        kelvin = nil
        iphone = nil
        print("chack")
    }
    
    func findPos(pos: Int) -> Int {
        if pos <= 1 {
            return 1
        }
        
        return 1 + min(findPos(pos: pos - 1), findPos(pos: pos - 2))
    }
    
    func getQuesNumber(threshold:Int, array:[Int]) -> Int {
        var count = 0
        for num in array {
            if num == threshold {
                
            }
        }
        return count;
    }
}

