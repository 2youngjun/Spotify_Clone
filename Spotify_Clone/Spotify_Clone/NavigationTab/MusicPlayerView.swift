//
//  MusicPlayerView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/26.
//

import SwiftUI

struct MusicPlayerView: View {
    @State private var heart: Bool = false
    var body: some View {
        VStack{
            Spacer()
            VStack{
                HStack{
                    Spacer()
                    Text("Kanye West Greatest Hits")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                    Spacer()
                    Button(action: {
                        
                    }){
                        Text("•••")
                    }
                }
                
                Image("placeholder-img")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 250, height: 250)
                    .padding(.top, 32)
                    .padding(.bottom, 32)
                
                HStack{
                    VStack(alignment: .leading, spacing: 8){
                        Text("Dark Fantasy")
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Kanye West")
                            .font(.title3)
                            // opacity
                            .foregroundColor(Color.white.opacity(0.6))
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        heart.toggle()
                    }){
                        if heart {
                            Image(systemName: "heart-fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .background(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
                        } else {
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
                        }
                    }
                }
                
                ZStack(alignment: .leading){
                    Rectangle()
                        .foregroundColor(Color.white.opacity(0.2))
                        .frame(height: 4)
                        .cornerRadius(2)
                    ZStack(alignment: .trailing){
                        Rectangle()
                            .frame(width: 100, height: 3)
                            .cornerRadius(2)
                        Circle()
                            .frame(width: 14, height: 14)
                    }
                }
                
                HStack{
                    Text("1:07")
                        .font(.footnote)
                        .foregroundColor(Color.white.opacity(0.7))
                    Spacer()
                    Text("-4:17")
                        .font(.footnote)
                        .foregroundColor(Color.white.opacity(0.7))
                }
                
                HStack {
                    Button(action:{}) {
                        Image("shuffle")
                            .resizable()
                            .frame(width:20,height:20)
                            .foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
                    }
                    Spacer()
                    Button(action:{}) {
                        Image("left-arrow")
                            .resizable()
                            .frame(width:30,height:30)
                    }
                    Spacer()
                    Button(action:{}) {
                        Image("pause")
                            .resizable()
                            .frame(width:70,height:70)
                    }
                    Spacer()
                    Button(action:{}) {
                        Image("right-arrow")
                            .resizable()
                            .frame(width:30,height:30)
                    }
                    Spacer()
                    Button(action:{}) {
                        Image("desktop")
                            .resizable()
                            .frame(width:20,height:20)
                    }
                }.padding(.top, 32)
                
            }.padding(24)
            Spacer(minLength: 100)
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color.init(#colorLiteral(red: 0.6745098039, green: 0.09411764706, blue: 0.1647058824, alpha: 1)) , Color.init(#colorLiteral(red: 0.3725490196, green: 0.05490196078, blue: 0.09019607843, alpha: 1)) ]), startPoint: .topLeading, endPoint: .center))
        .foregroundColor(.white)
        .ignoresSafeArea()
        
        
    }
}

struct MusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
    }
}
