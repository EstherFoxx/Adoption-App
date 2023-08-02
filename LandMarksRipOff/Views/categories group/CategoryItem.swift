//
//  CategoryItem.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/8/8.
//

import SwiftUI

struct CategoryItem: View {
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
                    landmark.image
                .renderingMode(.original) //change the navigation appearance of the category
                .resizable()
                .frame(width: 155, height: 155)
                .cornerRadius(5)
            Text(landmark.name)
                .foregroundColor(.primary) // use the envirn accent colour
                .font(.caption)
                }
                .padding(.leading, 15)
    }
}

struct CategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CategoryItem(landmark: ModelData().landmarks[0])
        //where landmark can be traced
    }
}
