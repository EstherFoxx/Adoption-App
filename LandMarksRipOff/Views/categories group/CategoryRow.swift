//
//  CategoryRow.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/8/5.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName) //display the name of the category
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { landmark in
                            NavigationLink {
                                LandmarkDetail(landmark: landmark) //destination
                            } label: { //category item itself is the label for the button
                                CategoryItem(landmark: landmark)
                            }
                            //add in navigation between sections
                        }
                    }
                }
            .frame(height: 185)
        }
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    
    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(4))
        )
    }
}
