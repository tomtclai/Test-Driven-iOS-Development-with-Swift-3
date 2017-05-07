//
//  ToDoItem.swift
//  ToDo
//
//  Created by Lai, Tom on 5/6/17.
//  Copyright © 2017 Lai, Tom. All rights reserved.
//

import Foundation
struct ToDoItem {
    let title: String
    let itemDescription: String?
    let timestamp: Double?
    let location: Location?
    init(title: String, itemDescription: String? = nil, timestamp: Double? = nil, location: Location? = nil) {
        self.title = title
        self.itemDescription = itemDescription
        self.timestamp = timestamp
        self.location = location
    }
}

extension ToDoItem: Equatable {
    public static func ==(lhs: ToDoItem, rhs: ToDoItem) -> Bool {
        return lhs.title == rhs.title &&
            lhs.location?.name == rhs.location?.name
    }
}
