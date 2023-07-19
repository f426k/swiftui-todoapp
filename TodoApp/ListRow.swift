//
//  ListRow.swift
//  TodoApp
//
//  Created by Fuka Takashima on 2023/07/19.
//

import SwiftUI

struct ListRow: View {
    let task:String
    var isCheck: Bool

    var body: some View {
        HStack {
            if isCheck{
                Text("☑︎")
                Text(task)
                    .strikethrough()
                    .fontWeight(.ultraLight)
            } else {
                Text("□")
                Text(task)
            }
           
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow(task:"料理", isCheck: true)
    }
}
