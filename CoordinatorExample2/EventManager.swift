//
//  EventManager.swift
//  CoordinatorExample2
//
//  Created by ShreeshaRao on 31/01/22.
//

import Foundation
import UIKit

class EventManager {
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    
    func saveEvent(name: String , date: Date, image: UIImage) {
        let event = Event(context: context)
        event.setValue(name, forKey: "name")
        let imageData = image.jpegData(compressionQuality: 1)
        event.setValue(imageData, forKey: "image")
        event.setValue(date, forKey: "date")
        
        do {
            try context.save()
        }
        catch {
            print("Error thrown while saving event")
        }
    }
    
    func fetchEvent() -> [Event] {
        do {
            let events = try context.fetch(Event.fetchRequest())
            return events
        }
        catch {
            print("Error While Fetching Event Data")
            return []
        }
    }
}
