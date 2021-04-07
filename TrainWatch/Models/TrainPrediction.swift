//
//  TrainPrediction.swift
//  TrainWatch
//
//  Created by Zander Work on 4/7/21.
//

// https://developer.wmata.com/docs/services/547636a6f9182302184cda78/operations/547636a6f918230da855363f#AIMPredictionTrainInfo
struct AimPredictionTrainInfo: Codable, Hashable, Identifiable {
    var car: String?
    var destination: String
    var destinationCode: String?
    var destinationName: String
    var group: String
    var line: String
    var locationCode: String
    var locationName: String
    var min: String // Minutes until arrival. Can be a numeric value, ARR (arriving), BRD (boarding), ---, or empty.
    
    var id: Int {
        ((destinationCode ?? "") + locationCode + line + min + group).hashValue
    }
}

struct Trains: Codable {
    var trains: [AimPredictionTrainInfo]
}
