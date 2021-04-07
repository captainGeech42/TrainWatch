//
//  ContentView.swift
//  TrainWatch
//
//  Created by Zander Work on 4/4/21.
//

import SwiftUI

struct ContentView: View {
    @State var dataFromApi = [Line]()
    
    func getDataFromApi() {
        DispatchQueue.main.async {
            ApiManager.fetchLines() { lines in
                dataFromApi = lines.lines
            }
        }
    }
    
    var body: some View {
        NavigationView {
            List(dataFromApi) { line in
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
        ContentView(dataFromApi: lineData)
    }
}
