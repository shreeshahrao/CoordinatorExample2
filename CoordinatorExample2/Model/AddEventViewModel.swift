//
//  AddEventViewModel.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 31/01/22.
//

import Foundation
import UIKit

enum AddEvent: Int {
    case Title = 0
    case Date = 1
    case Image = 2
}

enum AddEventLabel: String {
    case Title = "Event Title"
    case Date = "Select Event Date"
    case Image = "Event Image"
}

protocol AddEventSupportNavigationDelegate: AnyObject {
    
    func handleAddImage(addImageSelected: Bool, imagePicker: UIImagePickerController)
}

//protocol AddImageDelegate: AnyObject {
//    func addImage()
//}

class AddEventViewModel: NSObject {
    
    var coordinator: AddEventCoordinator?
    
    private weak var navigationDelegate: AddEventSupportNavigationDelegate?
    
    func viewDidDisappear() {
        coordinator?.didFinishAddEvent()
    }
    
}

extension AddEventViewModel: UITableViewDataSource, UITableViewDelegate {
    

    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == AddEvent.Title.rawValue {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: AddEventTitleTableViewCell.Identifier) as! AddEventTitleTableViewCell
            cell.titleLabel.text = AddEventLabel.Title.rawValue
            return cell
        }
        if indexPath.section == AddEvent.Date.rawValue {
            let cell = tableView.dequeueReusableCell(withIdentifier: AddEventDateTableViewCell.Identifier) as! AddEventDateTableViewCell
            cell.dateLabel.text = AddEventLabel.Date.rawValue
            return cell
        }
        if indexPath.section == AddEvent.Image.rawValue {
            let cell = tableView.dequeueReusableCell(withIdentifier: ImagePickerTableViewCell.Identifier) as! ImagePickerTableViewCell
            cell.imageLabel.text = AddEventLabel.Image.rawValue
            cell.imageDelegate = self
            cell.eventImageView.image = UIImage(named: "newyear")
//            cell.addImageDelegate = self
            return cell
        }
        return UITableViewCell()
    }
    
    }

extension AddEventViewModel: AddImageButtonSelected {
    func addImageSelected(buttonSelected: Bool , imagePicker: UIImagePickerController) {
        coordinator?.handleAddImage(addImageSelected: buttonSelected , imagePicker: imagePicker)
    }


}

extension AddEventViewModel: UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        print(info)
        }
    
}

//extension AddEventViewModel:AddImageDelegate {
//    func addImage() {
//        func pickImage() {
//            let imagePicker = UIImagePickerController()
//            imagePicker.delegate = self
//            imagePicker.sourceType = .photoLibrary
//            imagePicker.modalPresentationStyle = .automatic
//            coordinator?.showImagePicker(imagePicker: imagePicker)
//        }
//    }
//}

