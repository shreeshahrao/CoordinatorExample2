//
//  EventListViewController.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 31/01/22.
//

import UIKit

class EventListViewController: UIViewController {
    
    let eventManager = EventManager()
    
    var viewModel: EventListViewModel!
    
//    init(viewModel: EventListViewModel) {
//        self.viewModel = viewModel
//        super.init(nibName: nil, bundle: nil)
//    }
//
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("\(aDecoder)")
//
//    }
    
    
    
    static func instantiate() -> EventListViewController {
        let storyBoard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyBoard.instantiateViewController(withIdentifier: "EventListViewController") as! EventListViewController
        return controller
    }

    override func viewDidLoad() {
        super.viewDidLoad()
       setupViews()
    //    eventManager.saveEvent(name: "New Year", date: Date(), image: UIImage(named: "newyear")!)
    //    print(eventManager.fetchEvent())
    }
    func setupViews() {
        let image =  UIImage(systemName: "plus.circle.fill")
         let barButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(addEventTapped))
         barButtonItem.tintColor = .blue
         navigationItem.rightBarButtonItem = barButtonItem
        navigationItem.title = viewModel.title
         navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    @objc func addEventTapped() {
        viewModel.addEventTapped()
    }
    
}
