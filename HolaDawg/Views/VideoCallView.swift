//
//  VideoCallView.swift
//  HolaDawg
//
//  Created by Shandika David Ardiansyah on 22/04/26.
//

import SwiftUI
import Kingfisher

struct VideoCallView: View {
    let imageURL = URL(string: "https://media1.tenor.com/m/zZ0Addx96t4AAAAC/nere-cristiano.gif")
    
    let imageURL2 = URL(string: "https://media1.tenor.com/m/xdbM67d9HTUAAAAd/parsee-mizuhashi-fumo.gif")
    var body: some View {
        NavigationStack{
            
            // CONTENT VIDEOCALL VIEW
                ZStack{
                    LazyVStack{
                        KFAnimatedImage(imageURL)
                            .cornerRadius(20)
                            .containerRelativeFrame(.vertical) { size, axis in
                                size * 0.5
                            }
                        Spacer()
                        KFAnimatedImage(imageURL2)
                            .cornerRadius(20)
                            .containerRelativeFrame(.vertical) { size, axis in
                                size * 0.5
                            }
                    }
                    .padding(10)
                    
                    VStack{
                        HStack(alignment: .top){
                            Spacer()
                            Label("59:00", systemImage: "record.circle.fill")
                                .padding(10)
                                .foregroundColor(Color.red)
                                .glassEffect(in: .rect(cornerRadius: 20))
                        }
                        Spacer()
                        
                        HStack{
                            Button("Mic", systemImage: "microphone.fill") {
                                
                            }
                            .font(Font.system(size: 30))
                            .labelStyle(.iconOnly)
                            .buttonStyle(.glass)
                            .buttonBorderShape(.roundedRectangle)
                            .controlSize(ControlSize.extraLarge)
                            .buttonSizing(ButtonSizing.flexible)
                            
                            NavigationLink(destination: ContentView()){
                                Label("end-call", systemImage: "phone.fill")
                                    .font(Font.system(size: 30))
                                    .labelStyle(.iconOnly)
                                    .foregroundColor(Color.red)
                            }
                            .buttonStyle(.glass)
                            .buttonBorderShape(.roundedRectangle)
                            .controlSize(ControlSize.extraLarge)
                            .buttonSizing(ButtonSizing.flexible)
                            
                            Button("Mic", systemImage: "camera.fill") {
                                
                            }
                            .font(Font.system(size: 30))
                            .labelStyle(.iconOnly)
                            .buttonStyle(.glass)
                            .buttonBorderShape(.roundedRectangle)
                            .controlSize(ControlSize.extraLarge)
                            .buttonSizing(ButtonSizing.flexible)
                        }
                    }
                    .padding(20)
            }
        }
        .toolbar(.hidden, for: .navigationBar, .tabBar)
    }
}

#Preview {
    VideoCallView()
}
