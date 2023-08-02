//
//  FavouriteButton.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/8/8.
//

import SwiftUI

struct FavouriteButton: View {
    @Binding var isSet: Bool
    //isSet binding: button's current state
    
    var body: some View {
        Button {
            isSet.toggle() //switch, toggles the isSet state
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavouriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavouriteButton(isSet: .constant(true))
        //provide a constant value for preview
    }
}
