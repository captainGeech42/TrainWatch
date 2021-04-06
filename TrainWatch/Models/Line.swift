//
//  Line.swift
//  TrainWatch
//
//  Created by Zander Work on 4/5/21.
//

struct Line: Codable, Hashable {
    var LineCode: String
    var DisplayName: String
    var StartStationCode: String
    var EndStationCode: String
    var InternalDestination1: String
    var InternalDestination2: String
}

struct Lines: Codable {
    var Lines: [Line]
}
