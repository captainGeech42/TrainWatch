//
//  ContentView.swift
//  TrainWatch
//
//  Created by Zander Work on 4/4/21.
//

import SwiftUI

struct ContentView: View {
    @State var dataFromApi = [Line]()
    
    func getLineDataFromApi() {
        DispatchQueue.main.async {
            fetchLines { lines in
                DispatchQueue.main.async {
                    dataFromApi = lines
                }
            }
        }
    }
    
    var body: some View {
        List(dataFromApi) { line in
            LineRow(line: line)
        }
        .onAppear(perform: getLineDataFromApi)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(dataFromApi: lineData)
    }
}
