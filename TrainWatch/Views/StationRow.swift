//
//  StationRow.swift
//  TrainWatch
//
//  Created by Zander Work on 4/6/21.
//

import SwiftUI

struct StationRow: View {
    var station: Station
    
    var body: some View {
        HStack {
//            Circle()
//                .frame(width: 20, height: 20)
//                .foregroundColor(Color(line.color))
            
            Text(station.name)
            
            Spacer()
        }
    }
}

struct StationRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            StationRow(station: stationData[0])
            StationRow(station: stationData[1])

        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}