//
//  AddEventCoordinator.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 31/01/22.
//

import Foundation
import UIKit

final class AddEventCoordinator: Coordinator {
    
    var childCoordinator: [Coordinator] = []
    let navigationController: UINavigationController
    
    var parentCoordinator: EventListCoordinator?
    
    init(navigationController: UINavigationController)
    {
        self.navigationController = navigationController
    }
    func start() {
        let addEventViewController: AddEventViewController = .instantiate()
        let addViewModel = AddEventViewModel()
        addEventViewController.viewModel = addViewModel
        addViewModel.coordinator = self
        navigationController.pushViewController(addEventViewController, animated: true)
        // create and ad  event view controller
        //create add event view model
        //present modally
    }

    func didFinishAddEvent() {
        parentCoordinator?.childDidFinish( self)
    }
    
    func showImagePicker(imagePicker: UIImagePickerController) {
        navigationController.present(imagePicker, animated: true, completion: nil)
    }
  
}

extension AddEventCoordinator: AddEventSupportNavigationDelegate {

        
    func handleAddImage(addImageSelected: Bool , imagePicker: UIImagePickerController) {
        navigationController.present(imagePicker, animated: true, completion: nil)
        print(imagePicker)
        
    }

}


