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
                .foregroundColor(Color(line.color))
            
            Text(line.displayName)
            
            Spacer()
        }
    }
}

struct LineRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LineRow(line: MockData.lineArray[0])
            LineRow(line: MockData.lineArray[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
