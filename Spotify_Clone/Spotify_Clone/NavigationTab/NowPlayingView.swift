//
//  NowPlayingView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/24.
//

import SwiftUI

struct NowPlayingView : View {
    var body: some View {
        HStack(spacing: 16){
            Image("placeholder-img")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading){
                Text("Power")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Kanye West")
                    .font(.footnote)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            HStack(spacing: 32){
                Button(action: {
                    print("Bluetooth Pressed!")
                }){
                    Image("bluetooth")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
                }
                
                Button(action: {
                    print("Pause Pressed!")
                }){
                    Image("pauseUnrounded")
                        .resizable()
                        .frame(width: 20, height: 20)
                        .foregroundColor(.white)
                }
                .padding(.trailing, 16)
            }
        }
        .frame(height: 68)
        .background(Color.init(#colorLiteral(red: 0.137254902, green: 0.137254902, blue: 0.137254902, alpha: 1)))
    }
}

struct NowPlayingView_Previews: PreviewProvider {
    static var previews: some View {
        NowPlayingView()
    }
}
