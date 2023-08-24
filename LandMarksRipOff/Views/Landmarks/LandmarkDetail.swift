//
//  LandmarkDetail.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/7/29.
// the page opened after clicking on individual row of adoption centre

import SwiftUI
import SafariServices

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    //to support the button, which needs access to the environ's model data for comparison
    @State private var showSafari: Bool = false
    //toggle to show the webpage in safari, on top of our view
    
    @Environment(\.openURL) private var openURL
    
    var landmark: Landmark //import the file to read values
    //changed text to be dynamic, reading values from jison file

    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
        //compute the index of the input landmark by comparing it with the model data
    }

    var body: some View {
        ScrollView {
            MapView(coordinate: landmark.locationCoordinate)
                .ignoresSafeArea(edges: .top)
                .frame(height: 300)

            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavouriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    //landmarkIndex: with the modelData object to ensure that the button updates the isFavorite property of the landmark stored in the model object
                    //Embed the landmark’s name in an HStack with a new FavoriteButton
                    //provide a binding to the isFavorite property with the dollar sign ($)
                    Spacer()
                    VStack{
                        Image("direction")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .foregroundColor(.white)
                            .cornerRadius(40)
                            .onTapGesture{
                                showSafari.toggle()
                            }
                            .fullScreenCover(isPresented: $showSafari, content: {
                                SFSafariViewWrapper(url: URL(string: landmark.di_url)!)
                            })
                        Text("Directions")

                    }}

                HStack {
                    Spacer()
                    Text(landmark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)

                Divider()

                Text("About \(landmark.name)")
                    .font(.title2)
                Text(landmark.description)
                
                Button {
                    if let url = URL(string: landmark.ad_url) {
                                openURL(url)
                            }
                        } label: {
                            Label("View animals for Adoption", systemImage: "paperplane")
                        }
                        .padding()
                        .background(Color(red: 255, green: 0, blue: 0))
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                Button {
                    if let url = URL(string: landmark.vo_url) {
                                openURL(url)
                            }
                        } label: {
                            Label("Be a Volunteer", systemImage: "hand.raised.fingers.spread.fill")
                        }
                        .padding()
                        .background(Color(red: 255, green: 0, blue: 0))
                        .foregroundStyle(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                Button {
                    if let url = URL(string: landmark.vo_url) {
                                openURL(url)
                            }
                        }
            label: {
                            Label("Make a Donation", systemImage: "heart.fill")
                        }
            .padding()
            .background(Color(red: 255, green: 0, blue: 0))
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 25.0, style: .continuous))
                
                        .onTapGesture{
                            showSafari.toggle()
                        }
                        .fullScreenCover(isPresented: $showSafari, content: {
                            SFSafariViewWrapper(url: URL(string: landmark.ad_url)!)
                                
                        })
                                
                
                
                
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
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}










