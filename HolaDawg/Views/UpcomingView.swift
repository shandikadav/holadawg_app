//
//  UpcomingView.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 20/04/26.
//

import SwiftUI

struct UpcomingView: View {
    var body: some View {
        NavigationStack{
            ScrollView {
                
                // MAIN CONTENT UPCOMING
                VStack(alignment: .leading, spacing: 27) {
                    // HEADER TITLE
                    HStack(alignment: .top) {
                        Text("Upcoming")
                            .font(Font.largeTitle.bold())
                        Spacer()
                    }
                    .padding(.bottom, 8)
                    
                    // CARD UPCOMING COLUMN 1
                    VStack(alignment: .leading) {
                        HStack(alignment: .top) {
                            Text("16 April 2026")
                                .font(Font.title3)
                            Spacer()
                        }
                        CardComponentUpcoming(name: "Mizuhashi")
                        CardComponentUpcoming(name: "Mizuhashi")
                    }
                    
                    // CARD UPCOMING COLUMN 2
                    VStack(alignment: .leading) {
                        HStack(alignment: .top) {
                            Text("17 April 2026")
                                .font(Font.title3)
                            Spacer()
                        }
                        CardComponentUpcoming(name: "Mizuhashi")
                    }
                }
                .padding(.horizontal, 20)
                
                
            }
        }
    }
}

#Preview {
    UpcomingView()
}
