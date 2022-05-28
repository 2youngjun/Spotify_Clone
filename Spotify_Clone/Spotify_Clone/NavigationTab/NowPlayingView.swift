//
//  NowPlayingView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/24.
//

import SwiftUI

struct NowPlayingView : View {
    @State private var isPlay = false
    @State private var isBluetooth = false
    @EnvironmentObject var checkToggle: CheckToggle

    var body: some View {
        HStack(spacing: 16){
            Image("LovingYouGirl")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading){
                Marque(text: "Loving you girl • Peder Elias, Hkeem", paddingTop: 11)
                
                HStack{
                    if isBluetooth{
                        Image(systemName: "headphones")
                            .resizable()
                            .frame(width: 8, height: 8)
                            .foregroundColor(.white)
                        Text("이영준의 AIRPODS PRO")
                            .font(.caption2)
                            .foregroundColor(.white)
                    } else {
                        Image(systemName: "headphones")
                            .resizable()
                            .frame(width: 8, height: 8)
                            .foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
                        Text("이영준의 AIRPODS PRO")
                            .font(.caption2)
                            .foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
                    }
                    
                }
                .padding(.bottom, 10)
                
            }
            
            Spacer()
            
            HStack(spacing: 32){
                Button(action: {
                    isBluetooth.toggle()
                }){
                    if isBluetooth{
                        Image(systemName: "headphones")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                    } else {
                        Image(systemName: "headphones")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
                    }
                }
                
                Button(action: {
                    checkToggle.isPlayingToggle.toggle()
                }){
                    if checkToggle.isPlayingToggle{
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .foregroundColor(.white)
                        
                    } else {
                        Image(systemName: "pause.fill")
                            .resizable()
                            .frame(width: 16, height: 20)
                            .foregroundColor(.white)
                            .padding(.leading, 2)
                            .padding(.trailing, 2)
                    }
                }
                .padding(.trailing, 16)
            }
        }
        .frame(height: 60)
        .background(Color.init(#colorLiteral(red: 94/225, green: 98/225, blue: 125/255, alpha: 1)))
    }
}

