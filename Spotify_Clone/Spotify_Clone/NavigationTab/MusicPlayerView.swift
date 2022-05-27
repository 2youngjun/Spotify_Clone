//
//  MusicPlayerView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/26.
//

import SwiftUI

enum RepeatMethod: Int{
    case playingDirect
    case playingRoutine
    case playingOne
}

struct MusicPlayerView: View {
    @State private var isHeart = false
    @State private var isShuffle = false
    @State private var isPlaying = false
    @State private var isRepeatMethod : RepeatMethod = .playingDirect
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            Spacer()
            VStack{
                HStack{
                    Button(action: {
                        withAnimation{
                            presentationMode.wrappedValue.dismiss()
                        }
                    }){
                        Image(systemName: "chevron.compact.down")
                            .resizable()
                            .frame(width: 16, height: 8)
                            .foregroundColor(.white)
                    }
                    Spacer()
                    Text("Peder Elias 라디오")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Spacer()
                    Button(action: {
                        
                    }){
                        Text("•••")
                    }
                }
                
                Image("LovingYouGirl")
                    .resizable()
                    .aspectRatio(1, contentMode: .fill)
                    .padding(.top, 32)
                    .padding(.bottom, 32)
                
                HStack{
                    VStack(alignment: .leading, spacing: 8){
                        Text("Loving You Girl(feat.Hkeem)")
                            .font(.title2)
                            .fontWeight(.bold)
                        Text("Peder Elias, Hkeem")
                            .font(.body)
                            .foregroundColor(Color.white.opacity(0.6))
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        isHeart.toggle()
                    }){
                        if isHeart {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
                                
                        } else {
                            Image(systemName: "heart")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .foregroundColor(.white)
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
                    Button(action:{
                        isShuffle.toggle()
                    }) {
                        if isShuffle {
                            Image(systemName: "shuffle")
                                .resizable()
                                .frame(width:20,height:20)
                                .foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
                        } else {
                            Image(systemName: "shuffle")
                                .resizable()
                                .frame(width:20,height:20)
                        }
                    }
                    
                    Spacer()
                    
                    Button(action:{}) {
                        Image(systemName: "backward.end")
                            .resizable()
                            .frame(width:30,height:30)
                    }
                    
                    Spacer()
                    
                    Button(action:{
                        isPlaying.toggle()
                    }) {
                        if isPlaying {
                            Image(systemName: "play.circle")
                                .resizable()
                                .frame(width:70,height:70)
                        } else {
                            Image(systemName: "pause.circle")
                                .resizable()
                                .frame(width:70,height:70)
                        }
                    }
                    
                    Spacer()
                    
                    Button(action:{}) {
                        Image(systemName: "forward.end")
                            .resizable()
                            .frame(width:30,height:30)
                    }
                    
                    Spacer()
                    
                    Button(action:{
                        switch self.isRepeatMethod {
                        case .playingDirect:
                            self.isRepeatMethod = .playingRoutine
                        case .playingRoutine:
                            self.isRepeatMethod = .playingOne
                        default :
                            self.isRepeatMethod = .playingDirect
                        }
                    }) {
                        self.rotateView()
                        
                    }
                }.padding(.top, 32)
                
            }.padding(24)
            Spacer(minLength: 100)
        }
        .background(LinearGradient(gradient: Gradient(colors: [Color.init(red: 147/225, green: 178/225, blue: 196/255) , Color.init(red: 107/225, green: 129/225, blue: 143/225) ]), startPoint: .topLeading, endPoint: .center))
        .foregroundColor(.white)
        .ignoresSafeArea()
    }
    
    @ViewBuilder
    func rotateView() -> some View {
        switch self.isRepeatMethod {
        case .playingDirect:
            Image(systemName: "repeat").resizable().frame(width: 20, height: 20)
        case .playingOne :
            Image(systemName: "repeat.1").resizable().frame(width: 20, height: 20).foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
        default :
            Image(systemName: "repeat").resizable().frame(width: 20, height: 20).foregroundColor(Color.init(#colorLiteral(red: 0.1725490196, green: 0.8156862745, blue: 0.4196078431, alpha: 1)))
        }
    }
}

struct MusicPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerView()
    }
}
