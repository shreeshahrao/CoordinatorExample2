//
//  EventListCoordinator.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 31/01/22.
//

import Foundation
import UIKit

final class EventListCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
    
    let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    func start() {
        let eventListViewModel = EventListViewModel()
        let eventListViewController = EventListViewController.instantiate()
        eventListViewModel.coordinator = self
        eventListViewController.viewModel = eventListViewModel
        navigationController.setViewControllers([eventListViewController], animated: false)
        
    }
    
    func startAddEvent() {
        let addEventCoordinator = AddEventCoordinator(navigationController: navigationController)
        addEventCoordinator.parentCoordinator = self
        childCoordinator.append(addEventCoordinator)
        addEventCoordinator.start()
        
    }
    
    func childDidFinish(_ childCoordinator: Coordinator) {
        print(self.childCoordinator)
        if let index  = self.childCoordinator.firstIndex(where: {coordinator -> Bool in
            return childCoordinator === coordinator}) {
            self.childCoordinator.remove(at: index)
        }
        
    }
    
}
    

