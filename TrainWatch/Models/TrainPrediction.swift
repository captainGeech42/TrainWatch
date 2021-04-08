//
//  TrainPrediction.swift
//  TrainWatch
//
//  Created by Zander Work on 4/7/21.
//

import UIKit

// https://developer.wmata.com/docs/services/547636a6f9182302184cda78/operations/547636a6f918230da855363f#AIMPredictionTrainInfo
struct AimPredictionTrainInfo: Codable, Hashable, Identifiable {
    var car: String?
    var destination: String
    var destinationCode: String?
    var destinationName: String
    var group: String
    var line: String // line code
    var locationCode: String
    var locationName: String
    var min: String // Minutes until arrival. Can be a numeric value, ARR (arriving), BRD (boarding), ---, or empty.
    
    var id: Int {
        ((destinationCode ?? "") + locationCode + line + min + group).hashValue
    }
    
    // won't work properly if a new line is introduced
    var lineName: String {
        Constants.Line.abbreviatedMapping[line] ?? "???"
    }
    
    // when sorted ascending, it will show boarding trains, arriving trains, and then the soonest trains
    // if min is --- or empty, it will be set to 99
    var sortOrder: Int {
        switch (min) {
        case "ARR":
            return -1
        case "BRD":
            return -2
        default:
            return Int(min) ?? 99
        }
    }
    
    // used to show the line color for the train
    var color: UIColor {
        UIColor(name: lineName)
    }
    
    // this is used to show the train status in the TrainPredictionRow view
    var message: String {
        switch (min) {
        case "ARR":
            return "Arriving now"
        case "BRD":
            return "Boarding now"
        default:
            switch (sortOrder) {
            case 99:
                return "ETA unavailable"
            default:
                return "Arriving in \(min) minutes"
            }
        }
    }
}

struct Trains: Codable {
    var trains: [AimPredictionTrainInfo]
}
