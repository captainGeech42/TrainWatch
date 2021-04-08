//
//  LineInfoView.swift
//  TrainWatch
//
//  Created by Zander Work on 4/7/21.
//

import SwiftUI

struct LineInfoView: View {
    @State var dataFromApi: Lines? = nil
    
    func getDataFromApi() {
        DispatchQueue.main.async {
            ApiManager.fetchLines() { lines in
                dataFromApi = lines
            }
        }
    }
    
    var body: some View {
        NavigationView {
            List(dataFromApi?.lines ?? []) { line in
                NavigationLink(destination: LineDetail(line: line)) {
                    LineRow(line: line)
                }
            }
            .onAppear(perform: getDataFromApi)
        }
        .navigationTitle("Metro Lines")
    }
}

struct LineInfoView_Previews: PreviewProvider {
    static var previews: some View {
        LineInfoView(dataFromApi: Optional(MockData.lines))
    }
}
