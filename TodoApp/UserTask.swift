//
//  UserTask.swift
//  TodoApp
//
//  Created by Fuka Takashima on 2023/07/19.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    var title:String
    var checked: Bool

    init(title: String, checked: Bool) {
        self.title = title
        self.checked = checked
    }
}
