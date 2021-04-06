//
//  LineView.swift
//  TrainWatch
//
//  Created by Zander Work on 4/5/21.
//

import SwiftUI

struct LineRow: View {
    var line: Line
    
    var body: some View {
        HStack {
            Circle()
                .frame(width: 20, height: 20)
                .foregroundColor(.blue)
            
            Text(line.displayName)
            
            Spacer()
        }
    }
}

struct LineRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LineRow(line: Line(lineCode: "BL", displayName: "Blue", startStationCode: "J03", endStationCode: "G05", internalDestination1: "", internalDestination2: ""))
            
            LineRow(line: Line(lineCode: "GR", displayName: "Green", startStationCode: "F11", endStationCode: "E10", internalDestination1: "", internalDestination2: ""))

        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
