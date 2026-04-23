//
//  CardComponent.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 21/04/26.
//

import SwiftUI

struct CardComponentMatch: View {
    let profile: Profile;
    
    var body: some View {
        ZStack(alignment: .leading) {
            Image(profile.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 170, height: 170)
                .clipped()
            
            // CARD INSIDE CONTENT
            VStack(alignment: .leading) {
                Spacer()
                HStack() {
                    VStack(alignment: .leading){
                        Text(profile.name)
                            .font(Font.subheadline.weight(.semibold))
                            .padding(.bottom, 2)
                        Text(profile.tags[0])
                            .font(Font.caption2)
                            .foregroundColor(Color.gray)
                    }
                    .padding(EdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 0))
                    Spacer()
                    Label("Chevron Right", systemImage: "chevron.right")
                    .labelStyle(IconOnlyLabelStyle())
                    .padding(.trailing, 8)
                    .foregroundColor(Color.primary)
                }
                .glassEffect(in: .rect(cornerRadius: 12))
                .padding(8)
            }
//            .padding(.vertical, 20)
            
                
        }
        .frame(width: 170, height: 170)
        .clipped()
        .cornerRadius(20)

    }
}

struct CardComponentUpcoming: View {
    let name: String;
    
    var body: some View {
        NavigationStack {
            HStack(alignment: .center) {
                Image("image-person1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 95, height: 112)
                    .clipped()
                    .cornerRadius(12)
                    .padding(EdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 6))
                
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(name)
                        .font(.title3.bold())
                        .foregroundStyle(Color.primary)
                    HStack(alignment: .top, spacing: 8) {
                        Text("🇯🇵 Native")
                            .font(Font.caption)
                        Text("🇯🇵 JLPT N1")
                            .font(Font.caption)
                    }
                    Label("Today • 16.00", systemImage: "clock")
                        .font(Font.subheadline)
                }
                
                Spacer()
                
                NavigationLink(destination: VideoCallView()) {
                    Text("Join")
                }
                .buttonStyle(.borderedProminent)
                .padding(.trailing, 16)
//                .disabled(buttonDisabled)
            }
            .glassEffect(in: .rect(cornerRadius: 12))

        }
    }
}

#Preview {
}
