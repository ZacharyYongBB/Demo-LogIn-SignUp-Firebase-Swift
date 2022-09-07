//
//  MaPalsApp.swift
//  MaPals
//
//  Created by Zachary on 7/9/22.
//

import SwiftUI
import Firebase

@main
struct MaPalsApp: App {
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
