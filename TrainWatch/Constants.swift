//
//  Constants.swift
//  TrainWatch
//
//  Created by Zander Work on 4/5/21.
//

struct Constants {
    struct Api {
        static let baseUrl = "https://api.wmata.com"
        
        // this isn't a secret values, more like a client identifier
        // making this public isn't a risk
        // pls don't @ me
        static let apiKey = "b83236a40b25404e85f4d2401cc8c08b" // TrainWatch primary key
    }
    
    struct Line {
        static let abbreviatedMapping = [
            "RD": "Red",
            "BL": "Blue",
            "YL": "Yellow",
            "OR": "Orange",
            "GR": "Green",
            "SV": "Silver"
        ]
    }
}
