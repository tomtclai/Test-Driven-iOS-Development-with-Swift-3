//
//  ItemManager.swift
//  ToDo
//
//  Created by Lai, Tom on 5/7/17.
//  Copyright © 2017 Lai, Tom. All rights reserved.
//

import Foundation
struct ItemManager {
    var toDoCount : Int {
        get {
            return toDoItems.count
        }
    }
    var doneCount : Int {
        get {
            return doneItems.count
        }
    }
    private var toDoItems = [ToDoItem]()
    private var doneItems = [ToDoItem]()
    mutating func add(_ item: ToDoItem) {
        toDoItems.append(item)
    }
    func item(at index: Int)-> ToDoItem {
        return toDoItems[index]
    }
    
    mutating func checkItem(at index: Int) {
        doneItems.append(toDoItems.remove(at: index))
    }
}
