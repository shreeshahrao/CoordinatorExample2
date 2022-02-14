//
//  AddImageViewModel.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 14/02/22.
//

import Foundation

class AddImageViewModel {
    
    var coordinator: AddEventCoordinator?
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
    
    func showImagePicker() {
        
       
        
    }
}
