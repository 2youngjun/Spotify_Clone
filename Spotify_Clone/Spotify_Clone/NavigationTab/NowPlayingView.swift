//
//  NowPlayingView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/24.
//

import SwiftUI

struct NowPlayingView : View {
    @State private var isPlay = false
    
    var body: some View {
        HStack(spacing: 16){
            Image("LovingYouGirl")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading){
//                HStack{
////                    Text("Loving you girl • ")
////                        .font(.footnote)
////                        .fontWeight(.semibold)
////                    Text("Peder Elias, Hkeem")
////                        .font(.footnote)
////                        .fontWeight(.semibold)
////                        .foregroundColor(Color.white.opacity(0.7))
//                }
                Marque(text: "Loving you girl • Peder Elias, Hkeem", paddingTop: 18)
                    .font(.footnote)
                
                HStack{
                    Image(systemName: "headphones")
                        .resizable()
                        .frame(width: 8, height: 8)
                        .foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
                    Text("이영준의 AIRPODS PRO")
                        .font(.caption2)
                        .foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
                }
                
            }
            
            Spacer()
            
            HStack(spacing: 32){
                Button(action: {
                    print("Bluetooth Pressed!")
                }){
                    Image(systemName: "headphones")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
                }
                
                Button(action: {
                    isPlay.toggle()
                }){
                    if isPlay{
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
        .background(Color.init(#colorLiteral(red: 0.137254902, green: 0.137254902, blue: 0.137254902, alpha: 1)))
    }
}

struct NowPlayingView_Previews: PreviewProvider {
    static var previews: some View {
        NowPlayingView()
    }
}
