//
//  AppCoordinator.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 30/01/22.
//

import Foundation
import UIKit

final class AppCoordinator: Coordinator {
    var childCoordinator: [Coordinator] = []
    
    let window: UIWindow
    // UIWindow dispatches event to your views
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        let navigationController = UINavigationController()
        let eventListCoordinator = EventListCoordinator(navigationController: navigationController)
        childCoordinator.append(eventListCoordinator)
        eventListCoordinator.start()
        window.rootViewController = navigationController
        window.makeKeyAndVisible() // shows the window and makes it as a keywindow  
        
    }
    
    
}
