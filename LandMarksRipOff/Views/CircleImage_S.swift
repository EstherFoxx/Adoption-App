//
//  CircleImage_S.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/9/6.
//

import SwiftUI

struct CircleImage_S: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .frame(width: 160, height: 160)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 2)
    }
}

struct CircleImage_S_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage_S(image: Image("ASD"))
    }
}

