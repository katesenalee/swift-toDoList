//
//  ToDo.swift
//  toDoList
//
//  Created by Sena Lee on 9/13/21.
//

import Foundation

struct ToDo: Identifiable{
    var id = UUID()
    var title: String
    var isCompleted = false
}
