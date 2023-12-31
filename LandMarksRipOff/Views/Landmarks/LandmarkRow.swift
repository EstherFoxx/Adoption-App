//
//  LandmarkRow.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/7/25.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    //landmark as a stored property of LandmarkRow

    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            //text view to use the landmakr property's name

            Spacer()

            if landmark.isFavorite {
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
