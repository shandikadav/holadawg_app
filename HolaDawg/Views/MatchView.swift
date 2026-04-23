//
//  MatchView.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 20/04/26.
//

import SwiftUI

struct MatchView: View {
    let profiles = MockData.profiles
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
            ScrollView {
                
                //MATCH CONTENT
                VStack(alignment: .leading) {
                    // HEADER TITLE
                    HStack(alignment: .top) {
                        Text("Match")
                            .font(Font.largeTitle.bold())
                        Spacer()
                    }
                    
                    // CARD CONTENT
                    LazyVGrid(columns: columns, spacing: 15) {
                        ForEach(profiles) { profile in
                            NavigationLink(value: profile) {
                                CardComponentMatch(profile: profile)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                }
                .padding(.horizontal, 20)
            }
    }
}

#Preview {
    MatchView()
}
