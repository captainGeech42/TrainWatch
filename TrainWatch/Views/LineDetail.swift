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
        NavigationView {
            VStack {
                HStack {
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(line.color))
                    
                    Text(line.displayName)
                }
                
                List((dataFromApi?.stations ?? [])
                        .filter { s in
                            return s.lines.contains(line.lineCode)
                        }) { station in
                    NavigationLink(destination: StationDetail(station: station)) {
                        StationRow(station: station)
                    }
                }
                .onAppear(perform: getDataFromApi)
            }
        }
    }
}

struct LineDetail_Previws: PreviewProvider {
    static var previews: some View {
        LineDetail(line: lineData[0], dataFromApi: Optional(stationsData))
    }
}
