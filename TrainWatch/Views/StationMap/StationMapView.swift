//
//  StationMapView.swift
//  TrainWatch
//
//  Created by Zander Work on 4/7/21.
//

import MapKit
import SwiftUI

struct StationMapView: View {
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(
            latitude: 38.912602,
            longitude: -77.043447
        ),
        span: MKCoordinateSpan(
            latitudeDelta: 0.1,
            longitudeDelta: 0.1
        )
    )
    
    @State private var dataFromApi: Stations? = nil
    
    func getDataFromApi() {
        DispatchQueue.main.async {
            ApiManager.fetchStations() { stations in
                dataFromApi = stations
            }
        }
    }
    
    var body: some View {
        Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, userTrackingMode: .constant(.none), annotationItems: dataFromApi?.stations ?? []) { station in
            MapPin(coordinate: station.location, tint: Color(UIColor(name: Constants.Line.abbreviatedMapping[station.lineCode1]!)))
        }
        .onAppear(perform: getDataFromApi)
        .edgesIgnoringSafeArea(.all)
    }
}

struct StationMapView_Previews: PreviewProvider {
    static var previews: some View {
        StationMapView()
    }
}
