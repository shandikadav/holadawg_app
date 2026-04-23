//
//  DetailView.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 22/04/26.
//

import SwiftUI

struct DetailView: View {
    let profile: Profile
    
    @State private var date = Date()
    @Environment(Router.self) var router
    
    var body: some View {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    // DETAIL CONTENT VIEW
                    Image(profile.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 230)
                        .clipped()
                        .cornerRadius(20)
                    
                    VStack(alignment: .leading){
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                Text(profile.name)
                                    .font(Font.title2.bold())
                                HStack{
                                    Text(profile.tags[0])
                                        .font(Font.footnote)
                                        .foregroundStyle(Color.gray)
                                    Text(profile.tags[1])
                                        .font(Font.footnote)
                                        .foregroundStyle(Color.gray)
                                }
                            }
                            Spacer()
                            Label(profile.rating, systemImage: "star.fill")
                                .foregroundColor(Color.orange)
                        }
                        .padding(.bottom, 8)
                        
                        Text(profile.bio)
                            .font(Font.body.monospacedDigit())
                    }
                    .padding(20)
                    .glassEffect(in: .rect(cornerRadius: 20))
                    
                    // SCHEDULE CONTENT
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Available Schedule")
                            .font(.title3.bold())
                            .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))

                        DatePicker("Available Schedule", selection: $date, displayedComponents: .date)
                            .datePickerStyle(.graphical)
                            .padding(.horizontal)
                    }
                    .glassEffect(in: .rect(cornerRadius: 20))
                    
                    NavigationLink("Book Now", value: "Booking")
                    .buttonStyle(.glassProminent)
                    .buttonSizing(.flexible)
                    .controlSize(ControlSize.extraLarge)
                }
                .padding(20)
                
            }
    }
}

#Preview {
    DetailView(profile: MockData.profiles[0])
        .environment(Router())
}
