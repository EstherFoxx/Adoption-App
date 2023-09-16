//
//  listCheckTask.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/9/16.
//

import SwiftUI

struct adoptionCheckBox: View {
    @Binding var isCompleted: Bool
    //isSet binding: button's current state
    
    var body: some View {
        Button {
            isCompleted.toggle() //switch, toggles the isCompleted state
        } label: {
            Label("Toggle Favorite", systemImage: isCompleted ? "checkmark.square" : "square")
                .labelStyle(.iconOnly)
                .foregroundColor(isCompleted ? .gray : .gray)
        }
    }
}

struct adoptionCheckBox_Previews: PreviewProvider {
    static var previews: some View {
        adoptionCheckBox(isCompleted: .constant(true))
        //provide a constant value for preview
    }
}
