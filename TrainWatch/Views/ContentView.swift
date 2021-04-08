//
//  ContentView.swift
//  TrainWatch
//
//  Created by Zander Work on 4/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            LineInfoView()
                .tabItem {
                    Image(systemName: "1.square.fill")
                    Text("asdf")
                }
            
            StationMapView()
                .tabItem {
                    Image(systemName: "2.square.fill")
                    Text("asdf2")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
//        ContentView(dataFromApi: Optional(MockData.lines))
    }
}
