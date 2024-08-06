//
//  TrackerApp.swift
//  Tracker
//
//  Created by Valerie N. Prinz on 06/08/2024.
//

import SwiftUI
import SwiftData

@main
struct TrackerApp: App {
    var body: some Scene {
        WindowGroup {
            ProjectListView()
                .modelContainer(for: [Project.self, ProjectUpdate.self])
        }
    }
}
