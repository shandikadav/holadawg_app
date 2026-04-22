//
//  DetailView.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 22/04/26.
//

import SwiftUI

struct DetailView: View {
    @State private var date = Date()
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    
                    // DETAIL CONTENT VIEW
                    Image("image-person1")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: .infinity, height: 230)
                        .clipped()
                        .cornerRadius(20)
                    
                    VStack(alignment: .leading){
                        HStack(alignment: .top){
                            VStack(alignment: .leading){
                                Text("Mizuhashi")
                                    .font(Font.title2.bold())
                                HStack{
                                    Text("🇯🇵 Native")
                                        .font(Font.footnote)
                                        .foregroundStyle(Color.gray)
                                    Text("🇯🇵 JLPT N1")
                                        .font(Font.footnote)
                                        .foregroundStyle(Color.gray)
                                }
                            }
                            Spacer()
                            Label("4.5", systemImage: "star.fill")
                                .foregroundColor(Color.orange)
                        }
                        .padding(.bottom, 8)
                        
                        Text("I’m Parsee Mizuhashi, a fluent Japanese speaker who listens more closely than you might expect. I speak clearly and at a steady pace, so you’ll be able to follow—if you’re paying attention. Don’t expect me to sugarcoat things; I’ll point out your mistakes as they are, sometimes sharply, but always with precision. If you can handle honest feedback and a bit of bite, I’ll help you refine your pronunciation, fix your phrasing, and push you to speak better than you did before.")
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
                    
                    NavigationLink("Book Now") {
                        BookingView()
                    }
                    .buttonStyle(.glassProminent)
                    .buttonSizing(.flexible)
                }
                .padding(20)
                
            }
        }
        .toolbar(.hidden, for: .tabBar)
    }
}

#Preview {
    DetailView()
}
