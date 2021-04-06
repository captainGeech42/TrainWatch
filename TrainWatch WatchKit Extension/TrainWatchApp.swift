//
//  TrainWatchApp.swift
//  TrainWatch WatchKit Extension
//
//  Created by Zander Work on 4/4/21.
//

import SwiftUI

@main
struct TrainWatchApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
