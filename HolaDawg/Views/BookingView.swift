//
//  BookingView.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 22/04/26.
//

import SwiftUI

struct BookingView: View {
    @State private var date = Date()
    @State private var isSelected = false
    @State private var selectedTime: String? = nil
    @State private var showingAlert = false
    @Environment(Router.self) var router
    
    let timeSlots = ["08.00", "09.00", "10.00", "11.00", "15.00", "16.00", "17.00", "18.00", "19.00", "20.00", "21.00"]
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
            ScrollView(){
                
                // BOOKING VIEW CONTENT
                VStack(alignment: .leading, spacing: 20){
                    // SCHEDULE CONTENT
                    VStack(alignment: .leading, spacing: 0) {
                        Text("Select Date")
                            .font(.title3.bold())
                            .padding(EdgeInsets(top: 20, leading: 20, bottom: 0, trailing: 20))

                        DatePicker("Available Schedule", selection: $date, displayedComponents: .date)
                            .datePickerStyle(.graphical)
                            .padding(.horizontal)
                    }
                    .glassEffect(in: .rect(cornerRadius: 20))

                    
                    VStack(alignment: .leading){
                        Text("Select Time")
                            .font(.title3.bold())
                            .padding(.bottom, 17)
                            
                        
                        LazyVGrid(columns: columns ){
                            ForEach(timeSlots, id: \.self){ time in
                                Button {
                                    selectedTime = time
                                } label: {
                                    Text(time)
                                }
                                .font(Font.body.bold())
                                .frame(maxWidth: .infinity)
                                .frame(height: 45)
                                .background(selectedTime == time ? Color.blue : Color.gray.opacity(0.1))
                                .foregroundColor(selectedTime == time ? .white : .primary)
                                .cornerRadius(20)
                            }
                        }
                    }
                    .padding(20)
                    .glassEffect(in: .rect(cornerRadius: 20))
                    
                    Button("Book Now"){
                        showingAlert = true
                    }
                    .buttonStyle(.glassProminent)
                    .controlSize(ControlSize.extraLarge)
                    .buttonSizing(.flexible)
                }
            }
            .padding(20)
            .scrollIndicators(.hidden)
            .alert("Are you sure to book this appointment?", isPresented: $showingAlert) {
                Button("Yes") {
                    router.popToRoot()
                }
                Button("No", role: .cancel) {}
            }
    }
}

#Preview {
    BookingView()
        .environment(Router())
}
