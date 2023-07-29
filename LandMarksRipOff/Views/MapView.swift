//
//  MapView.swift
//  LandMarksRipOff
//
//  Created by Esther Wang on 2023/7/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D
    @State private var region = MKCoordinateRegion()

    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear {
                setRegion(coordinate)
            }
    }

    private func setRegion(_ coordinate: CLLocationCoordinate2D) {
        region = MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 1.42305, longitude: 103.71634))
        //latitude should be in the range of of (-90,90)
        //longitude should be in the range of (-180,180)
        //invalid region: possible error, coordinate/location invalid; span invalid
    }
}
