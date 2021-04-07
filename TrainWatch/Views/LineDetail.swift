//
//  LineDetail.swift
//  TrainWatch
//
//  Created by Zander Work on 4/6/21.
//

import SwiftUI

struct LineDetail: View {
    var line: Line
    @State var dataFromApi: Stations? = nil
    
    func getDataFromApi() {
        DispatchQueue.main.async {
            ApiManager.fetchStations() { stations in
                dataFromApi = stations
            }
        }
    }
    
    var body: some View {
        VStack {
            Text(line.displayName)
            
            List(dataFromApi?.stations ?? []) { station in
                StationRow(station: station)
            }
            .onAppear(perform: getDataFromApi)
        }
    }
}

struct LineDetail_Previws: PreviewProvider {
    static var previews: some View {
        LineDetail(line: lineData[0])
    }
}
