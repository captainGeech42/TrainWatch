//
//  StationData.swift
//  TrainWatch
//
//  Created by Zander Work on 4/6/21.
//

//let lineData: [Line] = [
//    Line(lineCode: "BL", displayName: "Blue", startStationCode: "J03", endStationCode: "G05", internalDestination1: "", internalDestination2: ""),
//    Line(lineCode: "GR", displayName: "Green", startStationCode: "F11", endStationCode: "E10", internalDestination1: "", internalDestination2: "")
//]
//
//let linesData = Lines(lines: lineData)

let stationData: [Station] = [
    Station(code: "C02", name: "McPherson Square", stationTogether1: "", stationTogether2: "", lineCode1: "BL", lineCode2: "OR", lineCode3: "SV", lineCode4: nil, lat: 38.901316, lon: -77.033652, address: Address(street: "1400 I St. NW", city: "Washington", state: "DC", zip: "20005")),
    Station(code: "C03", name: "Farragut West", stationTogether1: "", stationTogether2: "", lineCode1: "BL", lineCode2: "OR", lineCode3: "SV", lineCode4: nil, lat: 38.901311, lon: -77.03981, address: Address(street: "900 18th St. NW", city: "Washington", state: "DC", zip: "20005")),
]

let stationsData = Stations(stations: stationData)
