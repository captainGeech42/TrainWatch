//
//  Line.swift
//  TrainWatch
//
//  Created by Zander Work on 4/5/21.
//

struct Line: Codable, Hashable {
    var lineCode: String
    var displayName: String
    var startStationCode: String
    var endStationCode: String
    var internalDestination1: String
    var internalDestination2: String
}

struct Lines: Codable {
    var lines: [Line]
}
