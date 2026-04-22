//
//  MatchView.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 20/04/26.
//

import SwiftUI

struct MatchView: View {
    var body: some View {
        NavigationStack {
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
                    VStack() {
                        // ROW CARD 1
                        HStack() {
                            //CARD 1
                            NavigationLink(destination: DetailView()) {
                                CardComponentMatch()
                            }
                            .buttonStyle(.plain)
                            Spacer()
                            //CARD 2
                            CardComponentMatch()
                        }
                        
                        
                    }
                }
                .padding(.horizontal, 20)
            }
        }
        .navigationTitle(Text("Match"))
    }
}

#Preview {
    MatchView()
}
