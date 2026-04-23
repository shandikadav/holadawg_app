//
//  ContentView.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 20/04/26.
//

import SwiftUI

//3====D

struct ContentView: View {
    @State private var router = Router()
    var body: some View {
        TabView {
            NavigationStack(path: $router.homePath){
                HomeView()
                    .navigationDestination(for: String.self) { value in
                        // TODO
                    }
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
            NavigationStack(path: $router.matchPath){
                MatchView()
                    .navigationDestination(for: Profile.self) { value in
                        DetailView(profile: value)
                    }
                    .navigationDestination(for: String.self) { value in
                        if value == "Booking" {
                            BookingView()
                        }
                    }
            }
            .tabItem {
                Label("Match", systemImage: "link")
            }
            UpcomingView()
                .tabItem {
                    Label("Upcoming", systemImage: "calendar")
                }
        }
        .toolbar(.hidden, for: .navigationBar)
        .environment(router)
    }
}

#Preview {
    ContentView()
}
