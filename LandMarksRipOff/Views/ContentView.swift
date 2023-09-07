//
//  ContentView.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: Tab = .featured
    
    
    enum Tab {
            case featured
            case list
        }
    //added an enumeration of the tabs to display
    
    var body: some View {
        TabView(selection: $selection) {
            //The tag(_:) modifier on each of the views matches one of the possible values that the selection property can take
            //so TabView can coordinate which view to display when the user makes a selection in the user interface
            CategoryHome()
                        .tabItem {
                            Label("Featured", systemImage: "pawprint.circle.fill")
                        } //give each tab a label
                        .tag(Tab.featured)

            my_journey()
                .tabItem {
                    Label("My journey", systemImage: "person.circle")
                }
                .tag(Tab.list)
            
            LandmarkList()
                .tabItem {
                    Label("My Favourites", systemImage: "star")
                }
                .tag(Tab.list)
            //TabView: switches between multiple child views using interactive user interface elements
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
