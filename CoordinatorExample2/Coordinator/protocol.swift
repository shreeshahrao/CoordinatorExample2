//
//  protocol.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 30/01/22.
//

import Foundation

protocol Coordinator: class {
    
    var childCoordinator: [Coordinator] {get} // This is used so that child coordinator gets retained , Everytime you use a new cooridnator you need to append it to the array
    
    func start() 
}
