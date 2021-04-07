//
//  TrainPredictionData.swift
//  TrainWatch
//
//  Created by Zander Work on 4/7/21.
//

// {"Car":"6","Destination":"SilvrSpg","DestinationCode":"B08","DestinationName":"Silver Spring","Group":"1","Line":"RD","LocationCode":"A01","LocationName":"Metro Center","Min":"3"}

let predictionData: [AimPredictionTrainInfo] = [
    AimPredictionTrainInfo(car: "6", destination: "SilverSpg", destinationCode: "B08", destinationName: "Silver Spring", group: "1", line: "RD", locationCode: "A01", locationName: "Metro Center", min: "3"),
    AimPredictionTrainInfo(car: "8", destination: "SilvaaSpg", destinationCode: "B09", destinationName: "Silverasdf Spring", group: "1", line: "RD", locationCode: "A21", locationName: "Metroasdf Center", min: "7")
]

let trainsData = Trains(trains: predictionData)
