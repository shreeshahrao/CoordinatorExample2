//
//  ImagePickerViewController.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 14/02/22.
//

import UIKit

class ImagePickerViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var viewModel: AddImageViewModel!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setUp()
    }
    
    func setUp() {
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
        imagePicker.modalPresentationStyle = .automatic
        present(imagePicker, animated: true, completion: nil)
    }
    
    
     func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {

            if let image  = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
                //eventImageView.image = image
                print(image)
            }
            imagePicker.dismiss(animated: true, completion: nil)
        }

        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            picker.dismiss(animated: true, completion: nil)
        }
    }
   


