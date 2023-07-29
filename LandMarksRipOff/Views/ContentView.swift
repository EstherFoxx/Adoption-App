//
//  ContentView.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/7/24.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
