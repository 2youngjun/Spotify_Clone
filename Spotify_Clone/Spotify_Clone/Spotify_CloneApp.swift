//
//  Spotify_CloneApp.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/23.
//

import SwiftUI

@main
struct Spotify_CloneApp: App {
    @StateObject private var checkToggle = CheckToggle()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(checkToggle)
        }
    }
}
