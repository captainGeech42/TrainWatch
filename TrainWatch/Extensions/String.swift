//
//  String.swift
//  TrainWatch
//
//  Created by Zander Work on 4/6/21.
//

extension String {
    // this is used for normalizing API values from WMATA to conform with Swift design standards
    // based on https://stackoverflow.com/a/26306372
    func lowercasingFirstLetter() -> String {
      return prefix(1).lowercased() + self.dropFirst()
    }
    
    mutating func lowercaseFirstLetter() {
        self = self.lowercasingFirstLetter()
    }
}
