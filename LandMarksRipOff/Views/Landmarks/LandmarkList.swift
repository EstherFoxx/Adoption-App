//
//  LandmarkList.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/7/29.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark) //destination of the link
                      //NavigationLink used to present a view
                    } label: {
                        LandmarkRow(landmark: landmark)
                        // what is being displace
                        //use label to displace a link
                    }
                }
            }
            .navigationTitle("Dog Shelters")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
