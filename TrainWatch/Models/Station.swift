//
//  Station.swift
//  TrainWatch
//
//  Created by Zander Work on 4/6/21.
//

import MapKit

struct Address: Codable, Hashable {
    var street: String
    var city: String
    var state: String
    var zip: String
}

// https://developer.wmata.com/docs/services/5476364f031f590f38092507/operations/5476364f031f5909e4fe3311?#Station
struct Station: Codable, Hashable, Identifiable {
    var code: String
    var name: String
    var stationTogether1: String
    var stationTogether2: String
    var lineCode1: String
    var lineCode2: String?
    var lineCode3: String?
    var lineCode4: String?
    var lat: Double
    var lon: Double
    var address: Address

    var id: Int {
        code.hashValue
    }
    
    var lines: [String] {
        [lineCode1, lineCode2 ?? "", lineCode3 ?? "", lineCode4 ?? ""]
    }
    
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: lat, longitude: lon)
    }
}

struct Stations: Codable {
    var stations: [Station]
}
