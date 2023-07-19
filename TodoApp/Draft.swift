//
//  Draft.swift
//  TodoApp
//
//  Created by 高嶋芙佳 on 2023/07/19.
//

import SwiftUI

struct Draft: View {
    @State var taskTitle = ""
    @EnvironmentObject var userData: UserData
    var body: some View {
        TextField("タスクを入力してください", text:$taskTitle)
            .onSubmit {
                self.createTask()
                self.userData.isEditing = false
            }

    }
    func createTask() {
        let newTask = Task(title:self.taskTitle,checked: false)
        self.userData.tasks.insert(newTask, at: 0)
        self.taskTitle = ""
    }
}

struct Draft_Previews: PreviewProvider {
    static var previews: some View {
        Draft()
    }
}
