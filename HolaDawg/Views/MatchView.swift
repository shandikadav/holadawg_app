//
//  MatchView.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 20/04/26.
//

import SwiftUI

struct MatchView: View {
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
                VStack() {
                    // ROW CARD 1
                    HStack() {
                        //CARD 1
                        CardComponentMatch()
                        Spacer()
                        //CARD 2
                        CardComponentMatch()
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
