//
//  Threads_Clone_iOSApp.swift
//  Threads-Clone-iOS
//
//  Created by Behzod Rajabov on 21/07/23.
//

import SwiftUI
import SwiftData

@main
struct Threads_Clone_iOSApp: App {
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .tint(.foreground)
        }
        .modelContainer(for: Item.self)
    }
}
