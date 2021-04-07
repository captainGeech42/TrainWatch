//
//  AnyKey.swift
//  TrainWatch
//
//  Created by Zander Work on 4/6/21.
//

// from https://developer.apple.com/documentation/foundation/jsondecoder/keydecodingstrategy/custom
struct AnyKey: CodingKey {
    var stringValue: String
    var intValue: Int?
    
    init?(stringValue: String) {
        self.stringValue = stringValue
        self.intValue = nil
    }
    
    init?(intValue: Int) {
        self.stringValue = String(intValue)
        self.intValue = intValue
    }
}
