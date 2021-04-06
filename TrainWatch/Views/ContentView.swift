//
//  ContentView.swift
//  TrainWatch
//
//  Created by Zander Work on 4/4/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(lineData, id: \.lineCode) { line in
            LineRow(line: line)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
