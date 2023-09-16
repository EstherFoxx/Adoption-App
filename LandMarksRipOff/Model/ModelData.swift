//
//  ModelData.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/7/25.
//

import Foundation
import Combine


final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("adoptionCentres.json")
    
    @Published var ad_info: [AdInfo] = load("Ad_Info1.geojson")
    // an array of landmarks from json file
    
    var features: [Landmark] {
            landmarks.filter { $0.isFeatured }
        }
    //contain only landmarks that is featured to be true

    
    var categories: [String: [Landmark]] {
            Dictionary(
                grouping: landmarks,
                by: { $0.category.rawValue }
            )
        }
}


func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
