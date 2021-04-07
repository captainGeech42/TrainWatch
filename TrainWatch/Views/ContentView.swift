//
//  ContentView.swift
//  TrainWatch
//
//  Created by Zander Work on 4/4/21.
//

import SwiftUI

struct ContentView: View {
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(dataFromApi: Optional(MockData.lines))
    }
}
