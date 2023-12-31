//
//  Landmark.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/7/25.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var ad_url: String
    var vo_url: String
    var do_url: String
    var di_url: String
    var state: String
    var city: String
    var description: String
    var isFavorite: Bool
    var isFeatured: Bool
    var doInfo: String
    var adInfo: String
    var voInfo: String
    
    //define the var types
    //matching names of some of the keys in the json file
    // in a json file, the keys are enclosed in double quotes, key n value seperated by a colon symbol
    // two key-valye pairs seperated by a comma
    
    
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case catndog = "Dogs and Cats"
        case cats = "Cats"
        case dogs = "Dogs"
        case hamster = "Hamsters"
        }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
        
    }
}
