//
//  volunteerButton.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/8/18.
//

import SwiftUI

struct volunteerButton: View {
    var body: some View {
        Link("Visit Our Site", destination: URL(string: "https://www.example.com")!)
            .environment(\.openURL, OpenURLAction { url in
                print("Open \(url)")
                return .handled
            })
        
        HStack {
            Image(systemName: "direction")
                        .font(.title)
            Text("Directions")
                .fontWeight(.bold)
                .font(.title)
        }
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .background(Color.purple)
        .cornerRadius(40)
        .foregroundColor(.white)
        .padding(10)
        .overlay(
                    RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.purple, lineWidth: 5)
                )
    }
}

struct volunteerButton_Previews: PreviewProvider {
    static var previews: some View {
        volunteerButton()
    }
}
