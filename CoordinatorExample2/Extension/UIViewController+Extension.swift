//
//  UIViewController+Extension.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 31/01/22.
//

import Foundation
import UIKit

extension UIViewController {
    static func instantiate<T>() -> T {
        let storyBoard = UIStoryboard(name: "Main", bundle: .main)
        let controller = storyBoard.instantiateViewController(withIdentifier: "\(T.self)") as! T
        return controller
    }
}
