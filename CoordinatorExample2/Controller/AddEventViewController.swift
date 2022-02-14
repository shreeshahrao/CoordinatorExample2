//
//  AddEventViewController.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 31/01/22.
//

import UIKit

class AddEventViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel: AddEventViewModel!
    
   
    
//    required init(viewModel: AddEventViewModel) {
//        self.viewModel = viewModel
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = viewModel
        tableView.delegate = viewModel
        setupUI()
    }
    
    func setupUI(){
        tableView.register(UINib(nibName: AddEventTitleTableViewCell.Identifier, bundle: nil), forCellReuseIdentifier: AddEventTitleTableViewCell.Identifier)
        tableView.register(UINib(nibName: AddEventDateTableViewCell.Identifier, bundle: nil), forCellReuseIdentifier: AddEventDateTableViewCell.Identifier)
        tableView.register(UINib(nibName: ImagePickerTableViewCell.Identifier, bundle: nil), forCellReuseIdentifier: ImagePickerTableViewCell.Identifier)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        viewModel.viewDidDisappear()
    }
    
    
}
