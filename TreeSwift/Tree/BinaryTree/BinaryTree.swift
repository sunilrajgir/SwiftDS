//
//  BinaryTree.swift
//  TreeSwift
//
//  Created by sunil.kumar1 on 6/24/19.
//  Copyright © 2019 sunil.kumar1. All rights reserved.
//

import UIKit

class BinaryTree: NSObject {
    let nodeArray = [50,10,5,15,13,19,20,25,14,18,22,34,35];
    var rootNode : TreeNode?
    var stack = [TreeNode]()

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
        
        self.rootNode?.leftNode?.leftNode?.rightNode?.leftNode = TreeNode(value: 34)
        
        self.rootNode?.rightNode?.rightNode?.leftNode = TreeNode(value: 18)
        
        self.rootNode?.rightNode?.rightNode?.leftNode?.rightNode = TreeNode(value: 35)
        
        self.rootNode?.rightNode?.rightNode?.rightNode = TreeNode(value: 22)
        return self.rootNode
    }
    
    func printTree() {
        print("======Inorder======")
        self.printInorderBinaryTree(rootNode: self.rootNode)
        print("=====Iterative Inorder======")
        self.printIterativeInorderBinaryTree(rootNode: self.rootNode)
        print("======Preorder======")
        self.printPreorderBinaryTree(rootNode: self.rootNode)
        print("=====Iterative Preorder======")
        self.printIterativePreorderBinaryTree(rootNode: self.rootNode)
        print("======Postorder======")
        self.printPostorderBinaryTree(rootNode: self.rootNode);
        print("======Iterative Postorder======")
        self.printIterativePostorderBinaryTree(rootNode: self.rootNode)
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
            printPreorderBinaryTree(rootNode: rootNode?.leftNode)
            printPreorderBinaryTree(rootNode: rootNode?.rightNode)
        }
    }
    
    func printPostorderBinaryTree(rootNode: TreeNode?) {
        if rootNode != nil {
            printPostorderBinaryTree(rootNode: rootNode?.leftNode)
            printPostorderBinaryTree(rootNode: rootNode?.rightNode)
            print(" ==> ", rootNode!.value)
        }
    }
    
    func printIterativeInorderBinaryTree(rootNode: TreeNode?) {
        var node = rootNode
        while true {
            while node != nil {
                self.stack.append(node!)
                node = node!.leftNode
            }
            
            if self.stack.isEmpty {
                break
            }
            
            if let popNode = stack.last  {
                stack.removeLast()
                print("==>", popNode.value)
                node = popNode.rightNode
            }
        }
    }
    
    func printIterativePreorderBinaryTree(rootNode: TreeNode?) {
        var node = rootNode
        while true {
            while node != nil {
                print("==>", node!.value)
                self.stack.append(node!)
                node = node!.leftNode
            }
            
            if self.stack.isEmpty {
                break
            }
            
            if let popNode = stack.last  {
                stack.removeLast()
                node = popNode.rightNode
            }
        }

    }
    

    
    func printIterativePostorderBinaryTree(rootNode: TreeNode?) {
        var node = rootNode
        var rightNode : TreeNode?
        
        while true {
            while node != nil {
                self.stack.append(node!)
                node = node!.leftNode
            }
            
            if self.stack.isEmpty {
                break
            }
            if let popNode = stack.last  {
                if popNode.rightNode == nil {
                    rightNode = popNode
                    print("==>", popNode.value)
                    stack.removeLast()
                } else {
                    if popNode.rightNode?.value == rightNode?.value {
                        rightNode = popNode
                        print("==>", popNode.value)
                        stack.removeLast()
                    } else {
                        node = popNode.rightNode
                    }
                }
            }
        }
    }
    
    func common(){
        
    }
}
