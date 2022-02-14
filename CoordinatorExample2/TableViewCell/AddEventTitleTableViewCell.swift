//
//  AddEventTitleTableViewCell.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 01/02/22.
//

import UIKit

class AddEventTitleTableViewCell: UITableViewCell {
    
    static let Identifier = "AddEventTitleTableViewCell"
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var addEventTitleTextField: UITextField!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
