//
//  LandmarkDetail.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/7/29.
// the page opened after clicking on individual row of adoption centre

import SwiftUI


struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark //import the file to read values
    //changed text to be dynamic, reading values from jison file


    var body: some View {
            ScrollView {
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)


                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)


                VStack(alignment: .leading) {
                    Text(landmark.name)
                        .font(.title)


                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)


                    Divider()


                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        }
    }


    struct LandmarkDetail_Previews: PreviewProvider {
        static let modelData = ModelData()
        
        static var previews: some View {
            LandmarkDetail(landmark: ModelData().landmarks[0])
                .environmentObject(modelData)
        }
    }
