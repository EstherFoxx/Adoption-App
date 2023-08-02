//
//  LandMarksRipOffApp.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/7/24.
//

import SwiftUI

@main
struct LandMarksRipOffApp: App {
    @StateObject private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
