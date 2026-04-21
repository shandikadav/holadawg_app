//
//  HomeView.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 20/04/26.
//

import SwiftUI

struct HomeView: View {
    @State private var date = Date()
    
    let days = [
        (name: "SUN", date: 1),
        (name: "MON", date: 2),
        (name: "TUE", date: 3),
        (name: "WED", date: 4),
        (name: "THU", date: 5),
        (name: "FRI", date: 6),
        (name: "SAT", date: 7)
    ]
    var body: some View {
        ScrollView(){
            VStack(alignment: .leading, spacing: 20){
                // HEADER CONTENT
                HStack(alignment: .top){
                    Text("Hola Dawg")
                        .font(Font.largeTitle.bold())
                    Spacer()
                    Button("Preferences", systemImage: "square.fill.text.grid.1x2"){
                        
                    }
                    .labelStyle(.iconOnly)
                    .font(.system(size: 24))
                    .buttonStyle(.glass)
                    
                }
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20) )
                
                // CARD PROFILE CONTENT
                ZStack(alignment: .topLeading) {
                    Image("image-person1")
                        .resizable()
                        .aspectRatio(contentMode: ContentMode.fill)
                        .frame(height: 450)
                    Color.black
                        .opacity(0.4)
                    
                    // Inside Card Content
                    VStack(alignment: .leading, spacing: 10){
                        
                        // Header Title Content
                        HStack(alignment: .top){
                            Text("Mizuhashi")
                                .font(Font.largeTitle.bold())
                            Spacer()
                            Label("4.5", systemImage: "star.fill")
                                .padding(10)
                                .font(Font.headline)
                                .foregroundColor(Color.orange)
                                .glassEffect()
                        }
                        HStack(alignment: .top){
                            Text("🇯🇵 Native")
                                .padding(10)
                                .font(Font.footnote)
                                .glassEffect()
                            Text("🇯🇵 JLPT N1")
                                .padding(10)
                                .font(Font.footnote)
                                .glassEffect()
                        }
                        Spacer()
                        Text("I’m Parsee Mizuhashi, a fluent Japanese speaker who listens more closely than you might expect. I speak clearly and at a steady pace, so you’ll be able to follow—if you’re paying attention.")
                            .font(Font.body)
                            .lineLimit(7)
                            
                    }
                    .padding(20)
                }
                .cornerRadius(20)
                .clipped()
                .foregroundStyle(.white)
                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                
                // SCHEDULE CONTENT
                VStack(alignment: .leading, spacing: 0) {
                    Text("Available Schedule")
                        .font(.title3)
                        .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))

                    DatePicker("Available Schedule", selection: $date, displayedComponents: .date)
                        .datePickerStyle(.graphical)
                        .padding(.horizontal)
                }
                .glassEffect(in: .rect(cornerRadius: 20))
                .padding(.horizontal)
            }
        }
        
        
    
    }
}


#Preview {
    HomeView()
}
