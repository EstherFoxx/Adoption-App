//
//  AdInfo.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/9/14.
//

import Foundation
import SwiftUI

struct AdInfo: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var isCompleted: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    }
