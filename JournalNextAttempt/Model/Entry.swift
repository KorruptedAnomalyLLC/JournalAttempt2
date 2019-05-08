//
//  Entry.swift
//  JournalNextAttempt
//
//  Created by Austin West on 5/8/19.
//  Copyright © 2019 Austin West. All rights reserved.
//

import Foundation

class Entry {
    var timestamp: Date
    var title: String
    var bodyText: String
    
    init(timestamp: Date = Date(), title: String, bodyText: String) {
        self.timestamp = timestamp
        self.title = title
        self.bodyText = bodyText
        
    }
}

extension Entry: Equatable {
    static func == (lhs: Entry, rhs: Entry) -> Bool {
        return lhs.title == rhs.title && lhs.bodyText == rhs.bodyText && lhs.timestamp == rhs.timestamp
    }
    
}
