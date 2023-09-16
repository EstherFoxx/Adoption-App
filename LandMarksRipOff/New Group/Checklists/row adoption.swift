//
//  list adoption.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/9/11.
//


import SwiftUI

struct row_adoption: View {
    var adoptionInfo: AdInfo
    //landmark as a stored property of LandmarkRow

    var body: some View {
        HStack {
            Text(adoptionInfo.name)
            adoptionInfo.image
                .resizable()
                .frame(width: 50, height: 50)
            //text view to use the landmake property's name
            Spacer()
        }
    }
}

struct row_adoption_Previews: PreviewProvider {
    static var ad_info = ModelData().ad_info

    static var previews: some View {
        Group {
            row_adoption(adoptionInfo: ad_info[0])
            row_adoption(adoptionInfo: ad_info[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
