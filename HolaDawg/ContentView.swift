//
//  ContentView.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 20/04/26.
//

import SwiftUI

//3====D

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            MatchView()
                .tabItem {
                    Label("Match", systemImage: "link")
                }
            UpcomingView()
                .tabItem {
                    Label("Upcoming", systemImage: "calendar")
                }
        }
    }
}

#Preview {
    ContentView()
}
