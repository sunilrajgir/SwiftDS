//
//  StructureClass.swift
//  TreeSwift
//
//  Created by sunil.kumar1 on 11/15/19.
//  Copyright © 2019 sunil.kumar1. All rights reserved.
//

import UIKit

struct StructureType {
    var name:String
    var array:[Int]
}

class Classtype {
    var name:String
    init(name:String) {
        self.name = name;
    }
}

class StructureClass: NSObject {
    
    let consStruct = StructureType(name: "ppp", array: [1,2,3,4])
    //consStruct.name = "qqqq"  can not assign

    var varStruct = StructureType(name: "ppp", array: [1,2,3,4])
    
//    varStruct.name = "qqqq"
//    varStruct.array = [1,2,3,4,5,6]
}

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is being initialized")
    }
    var gadget: Gadget?
    var gadgetWeak: GadgetWeak?
    var gadgetUnown: GadgetUnown?
    deinit {
        print("\(name) is being deinitialized")
    }
}
 
class Gadget {
    let model: String?
    var owner: Person?
    
    init(model: String) {
        self.model = model
        print("\(model) is being initialized")
    }

    deinit {
        print("\(model) is being deinitialized")
    }
}

class GadgetUnown {
    let model: String?
    unowned var owner: Person
    
    init(model: String, person:Person) {
        self.model = model
        self.owner = person
        print("\(model) is being initialized")
    }

    deinit {
        print("\(model) is being deinitialized")
    }
}

class GadgetWeak {
    let model: String?
    weak var owner: Person?
    
    init(model: String) {
        self.model = model
        print("\(model) is being initialized")
    }

    deinit {
        print("\(model) is being deinitialized")
    }
}



