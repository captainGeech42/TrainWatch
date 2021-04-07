//
//  MockData.swift
//  TrainWatch
//
//  Created by Zander Work on 4/7/21.
//

struct MockData {
    // MARK: - Line
    static let lineArray: [Line] = [
        Line(lineCode: "BL", displayName: "Blue", startStationCode: "J03", endStationCode: "G05", internalDestination1: "", internalDestination2: ""),
        Line(lineCode: "GR", displayName: "Green", startStationCode: "F11", endStationCode: "E10", internalDestination1: "", internalDestination2: "")
    ]

    static var lines: Lines {
        Lines(lines: lineArray)
    }

    // MARK: - Station
    static let stationArray: [Station] = [
        Station(code: "C02", name: "McPherson Square", stationTogether1: "", stationTogether2: "", lineCode1: "BL", lineCode2: "OR", lineCode3: "SV", lineCode4: nil, lat: 38.901316, lon: -77.033652, address: Address(street: "1400 I St. NW", city: "Washington", state: "DC", zip: "20005")),
        Station(code: "C03", name: "Farragut West", stationTogether1: "", stationTogether2: "", lineCode1: "BL", lineCode2: "OR", lineCode3: "SV", lineCode4: nil, lat: 38.901311, lon: -77.03981, address: Address(street: "900 18th St. NW", city: "Washington", state: "DC", zip: "20005")),
    ]

    static var stations: Stations {
        Stations(stations: stationArray)
    }
    
    // MARK: - TrainPrediction
    static let predictionArray: [AimPredictionTrainInfo] = [
        AimPredictionTrainInfo(car: "6", destination: "SilverSpg", destinationCode: "B08", destinationName: "Silver Spring", group: "1", line: "RD", locationCode: "A01", locationName: "Metro Center", min: "3"),
        AimPredictionTrainInfo(car: "8", destination: "SilvaaSpg", destinationCode: "B09", destinationName: "Silverasdf Spring", group: "1", line: "RD", locationCode: "A21", locationName: "Metroasdf Center", min: "7")
    ]

    static var trains: Trains {
        Trains(trains: predictionArray)
    }
}
