//
//  AddEventDateTableViewCell.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 01/02/22.
//

import UIKit

class AddEventDateTableViewCell: UITableViewCell {
    
    static let Identifier = "AddEventDateTableViewCell"
    
    @IBOutlet weak var datePicker: UIDatePicker!
    
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        datePicker.addTarget(self, action: #selector(dateSelected), for: .valueChanged)
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    @objc func dateSelected() {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .medium
        let date = dateFormatter.string(from: datePicker.date)
        dateLabel.text = date
    }
    
    
    
}
