//
//  EntryController.swift
//  JournalNextAttempt
//
//  Created by Austin West on 5/8/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation

class EntryController {
    
    static let sharedInstance = EntryController()
    
    var entries: [Entry] = []
//    Mark CRUD
    
    func addEntryWith(titleText: String, bodyText: String) {
        let newEntry = Entry(title: titleText, bodyText: bodyText)
//       add to entry array
        entries.append(newEntry)
    }
    
    func updaterEntry(entryToUpdate: Entry, titleToUpdate: String, bodyTextToUpdate: String) {
        entryToUpdate.title = titleToUpdate
        entryToUpdate.bodyText = bodyTextToUpdate
        
    }
    
    func removeEntry(entryToRemove: Entry) {
        guard let index = entries.index(of: entryToRemove) else {
            return
        }
        entries.remove(at: index)
        
        
        
    }
    
}
