//
//  StationDetail.swift
//  TrainWatch
//
//  Created by Zander Work on 4/7/21.
//

import SwiftUI

struct StationDetail: View {
    var station: Station
    @State var dataFromApi: Trains? = nil
    
    func getDataFromApi() {
        DispatchQueue.main.async {
            ApiManager.fetchTrainPredictions(stationCode: station.code) { trains in
                dataFromApi = trains
            }
        }
    }
    
    var body: some View {
        List(dataFromApi?.trains ?? []) { train in
            TrainPredictionRow(prediction: train)
        }
    }
}

struct StationDetail_Previews: PreviewProvider {
    static var previews: some View {
        StationDetail(station: stationData[0], dataFromApi: Optional(trainsData))
    }
}
