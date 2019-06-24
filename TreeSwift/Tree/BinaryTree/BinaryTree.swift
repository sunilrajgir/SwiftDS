//
//  BinaryTree.swift
//  TreeSwift
//
//  Created by sunil.kumar1 on 6/24/19.
//  Copyright © 2019 sunil.kumar1. All rights reserved.
//

import UIKit

class BinaryTree: NSObject {
    let nodeArray = [50,10,5,15,13,19,20,25,14,18,22];
    var rootNode : TreeNode?

    func createBinaryTree() -> TreeNode? {
        self.rootNode = TreeNode(value: 50)
        self.rootNode?.leftNode = TreeNode(value: 10)
        self.rootNode?.rightNode = TreeNode(value: 5)
        self.rootNode?.leftNode?.leftNode = TreeNode(value: 15)
        self.rootNode?.leftNode?.rightNode = TreeNode(value: 13)
        self.rootNode?.rightNode?.leftNode = TreeNode(value: 19)
        self.rootNode?.rightNode?.rightNode = TreeNode(value: 20)
        self.rootNode?.leftNode?.leftNode?.leftNode = TreeNode(value: 25)
        self.rootNode?.leftNode?.leftNode?.rightNode = TreeNode(value: 14)
        self.rootNode?.rightNode?.rightNode?.leftNode = TreeNode(value: 18)
        self.rootNode?.leftNode?.rightNode?.rightNode = TreeNode(value: 22)
        return self.rootNode
    }
    
    func printTree() {
        print("======Inorder======")
        self.printInorderBinaryTree(rootNode: self.rootNode);
        print("======Preorder======")
        self.printPreorderBinaryTree(rootNode: self.rootNode);
         print("======Postorder======")
        self.printPostorderBinaryTree(rootNode: self.rootNode);
    }
    
    func printInorderBinaryTree(rootNode: TreeNode?) {
        if rootNode != nil {
            printInorderBinaryTree(rootNode: rootNode?.leftNode)
            print(" ==> ", rootNode!.value)
            printInorderBinaryTree(rootNode: rootNode?.rightNode)
        }
    }
    
    func printPreorderBinaryTree(rootNode: TreeNode?) {
        if rootNode != nil {
            print(" ==> ", rootNode!.value)
            printInorderBinaryTree(rootNode: rootNode?.leftNode)
            printInorderBinaryTree(rootNode: rootNode?.rightNode)
        }
    }
    
    func printPostorderBinaryTree(rootNode: TreeNode?) {
        if rootNode != nil {
            printInorderBinaryTree(rootNode: rootNode?.leftNode)
            printInorderBinaryTree(rootNode: rootNode?.rightNode)
            print(" ==> ", rootNode!.value)
        }
    }
    
    
    func printIterativeInorderBinaryTree(rootNode: TreeNode?) {

    }
    
    func printIterativePreorderBinaryTree(rootNode: TreeNode?) {
        
    }
    
    func printIterativePostorderBinaryTree(rootNode: TreeNode?) {
        
    }
    
    func common(){
        
    }
}
