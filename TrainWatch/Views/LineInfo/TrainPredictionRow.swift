//
//  TrainPredictionRow.swift
//  TrainWatch
//
//  Created by Zander Work on 4/7/21.
//

import SwiftUI

struct TrainPredictionRow: View {
    var prediction: AimPredictionTrainInfo
    
    @State var showDetails: Bool = false
    
    var body: some View {
//        let tap = TapGesture()
//            .onEnded {
//                showDetails = !showDetails
//            }
        
        return VStack {
            HStack {
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(prediction.color))
                
                VStack {
                    HStack {
                        Text("\(prediction.lineName) to \(prediction.destinationName)")
                        
                        Spacer()
                    }
                    
                    HStack {
                        Text(prediction.message)
                        
                        Spacer()
                    }
                }
            }
            
            if showDetails {
                HStack {
                    Text("details")
                }
            }
        }
//        .gesture(tap)
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
