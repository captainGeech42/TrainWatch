//
//  Line.swift
//  TrainWatch
//
//  Created by Zander Work on 4/5/21.
//

import SwiftUI

struct Line: Codable, Hashable, Identifiable {
    var lineCode: String
    var displayName: String
    var startStationCode: String
    var endStationCode: String
    var internalDestination1: String
    var internalDestination2: String
    
    var color: UIColor {
        UIColor(name: displayName)
    }
    
    var id: Int {
        lineCode.hashValue
    }
}

struct Lines: Codable {
    var lines: [Line]
}
