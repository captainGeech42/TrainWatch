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
                    Image(systemName: "tram")
                    Text("Lines")
                }
            
            StationMapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Map")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
