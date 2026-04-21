//
//  CardComponent.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 21/04/26.
//

import SwiftUI

struct CardComponentMatch: View {
    var body: some View {
        ZStack(alignment: .leading) {
            Image("image-person1")
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Color.black
                .opacity(0.4)
            
            // CARD INSIDE CONTENT
            VStack(alignment: .leading) {
                Spacer()
                HStack() {
                    VStack(alignment: .leading){
                        Text("Kurabayashi")
                            .font(Font.subheadline.weight(.semibold))
                            .padding(.bottom, 2)
                        Text("🇯🇵 Native")
                            .font(Font.caption2)
                            .foregroundColor(Color.gray)
                    }
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                    Spacer()
                    Button("Button Add", systemImage: "chevron.right") {
                        
                    }
                    .labelStyle(IconOnlyLabelStyle())
                    .padding(.trailing, 8)
                    .foregroundColor(Color.primary)
                }
                .glassEffect(in: .rect(cornerRadius: 12))
                .padding(8)
            }
            .padding(.vertical, 20)
            
                
        }
        .frame(width: 170, height: 170)
        .clipped()
        .cornerRadius(20)

    }
}

#Preview {
    CardComponentMatch()
}
