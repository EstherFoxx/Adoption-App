//
//  Adoption Checklist Details.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/9/6.
//

import SwiftUI

struct Task: Identifiable {
    let id = UUID()
    let name: String
    var isCompleted: Bool
}

struct Adoption_Checklist_Details: View {
    
    @State private var tasks = [
        Task(name:"Mow the lawn", isCompleted: false),
        Task(name:"Feed the rabbit", isCompleted: false)
    ]
    
    var body: some View {
        VStack{
            Text("Checklist")
                .font(.custom(
                    "AmericanTypewriter",
                    fixedSize: 36))
            List($tasks){ $task in
                //use $task to change task a immutatable member to a mutating task
                //now it's a binding task: a connection between a value and a view that displays and changes it
                TaskCellView(task:$task)
            }
            //update the number of completed tasks
            Text("Completed tasks count:\(tasks.filter { $0.isCompleted }.count)")
        }
    }
}

struct Adoption_Checklist_Details_Previews: PreviewProvider {
    static var previews: some View {
        Adoption_Checklist_Details()
    }
}

struct TaskCellView: View {
    @Binding var task: Task
    
    var body: some View {
        HStack{
            Image(systemName: task.isCompleted ? "checkmark.square":"square")
                .onTapGesture{
                    task.isCompleted.toggle()
                }
            Text(task.name)
        }
    }
}
