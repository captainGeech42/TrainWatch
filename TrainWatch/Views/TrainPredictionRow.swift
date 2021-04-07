//
//  TrainPredictionRow.swift
//  TrainWatch
//
//  Created by Zander Work on 4/7/21.
//

import SwiftUI

struct TrainPredictionRow: View {
    var prediction: AimPredictionTrainInfo
    
    var body: some View {
        HStack {
            Text("Arriving in \(prediction.min) minutes")
            
            Spacer()
        }
    }
}

struct TrainPredictionRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TrainPredictionRow(prediction: MockData.predictionArray[0])
            TrainPredictionRow(prediction: MockData.predictionArray[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
