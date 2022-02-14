//
//  ImagePickerTableViewCell.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 01/02/22.
//

import UIKit

protocol AddImageButtonSelected {
    func addImageSelected(buttonSelected: Bool , imagePicker: UIImagePickerController) 
}

class ImagePickerTableViewCell: UITableViewCell , UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
    static let Identifier =  "ImagePickerTableViewCell"
    
    
    var imageDelegate: AddImageButtonSelected?
    
    @IBOutlet weak var addImageButton: UIButton!
    
    @IBOutlet weak var imageLabel: UILabel!

    @IBOutlet weak var eventImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @IBAction func addImage(_ sender: UIButton) {
        print(sender.isSelected)
        if sender.isSelected == true {
            print(sender.isSelected)
            let imagePicker = UIImagePickerController()
            imagePicker.sourceType = .photoLibrary
            imagePicker.allowsEditing = true
            imageDelegate?.addImageSelected(buttonSelected: true,imagePicker: imagePicker)
    }
    
        
    }
    
    func showImage() {
        
    }
   

}
