//
//  TreeNode.swift
//  TreeSwift
//
//  Created by sunil.kumar1 on 6/24/19.
//  Copyright © 2019 sunil.kumar1. All rights reserved.
//

import UIKit

class TreeNode: NSObject {
    var leftNode: TreeNode?
    var value: Int
    var rightNode: TreeNode?
    init(value: Int) {
        self.value = value
        self.leftNode = nil;
        self.rightNode = nil;
    }
}
