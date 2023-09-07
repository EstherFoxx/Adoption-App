//
//  CategoryHome.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/8/5.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    //create environment object so as to access the categories & other data
    
    var body: some View {
        NavigationView{
        List {
            modelData.features[7].image
                .resizable()
                .scaledToFill()
                .frame(height: 200)
                .clipped()
                .listRowInsets(EdgeInsets())
            //display the image of the first featured centre to the top of the list
            
            ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                CategoryRow(categoryName: key, items: modelData.categories[key]!)
            }
            .listRowInsets(EdgeInsets())
            //content can extend to the edges of the display
        }
        .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
