//
//  EventListViewModel.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 31/01/22.
//

import Foundation


class EventListViewModel {
    
    let title = "Events"
    
    var coordinator: EventListCoordinator?
    
    func addEventTapped() {
        coordinator?.startAddEvent() 
    }
}
