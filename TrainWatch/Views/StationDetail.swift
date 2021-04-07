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
        VStack {
            Text("Incoming trains to \(station.name)")
            
            List((dataFromApi?.trains ?? [])
                    .sorted {
                        return $0.sortOrder < $1.sortOrder
                    }) { train in
                TrainPredictionRow(prediction: train)
            }
            .onAppear(perform: getDataFromApi)
        }
    }
}

struct StationDetail_Previews: PreviewProvider {
    static var previews: some View {
        StationDetail(station: MockData.stationArray[0], dataFromApi: Optional(MockData.trains))
    }
}
