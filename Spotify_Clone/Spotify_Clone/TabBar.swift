//
//  TabBar.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/23.
//

import SwiftUI

struct TabBar: View {
    @State private var isPlayer = false
    init() {
            UITabBar.appearance().barTintColor = #colorLiteral(red: 0.06274509804, green: 0.06274509804, blue: 0.06274509804, alpha: 1)
            UITabBar.appearance().tintColor = #colorLiteral(red: 0.9960784314, green: 0.9960784314, blue: 1, alpha: 1)
        }
    
    var body: some View {
        TabView{
            NavigationView{
                ZStack(alignment: .bottom){
//                    HomeView()
                    NowPlayingView()
                        .onTapGesture{
                            withAnimation{
                                isPlayer.toggle()
                            }
                        }
                }
                .navigationBarHidden(true)
            }
            .tabItem{
                Image("home-fill")
                Text("Home")
            }
            
            NavigationView{
                Text("Search")
            }
            .tabItem{
                Image("search")
                Text("Search")
            }
            
            NavigationView{
                Text("Your Library")
            }
            .tabItem{
                Image("library")
                Text("Your Library")
            }
            
        }
        .accentColor(.black)
        
        if isPlayer {
            ZStack(alignment: .topLeading){
//                MusicPlayer()
                Button(action: {
                    withAnimation{
                        isPlayer.toggle()
                    }
                }){
                    Image("down-arrow")
                        .resizable()
                        .accentColor(.black)
                        .frame(width: 20, height: 20)
                }
                .padding(24)
            }
            .transition(.move(edge: .top))
        }
        
    }
//    func makeSandwitch(){
//
//    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

struct NowPlayingView : View {
    var body: some View {
        HStack(spacing: 16){
            Image("LovingYouGirl")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            VStack(alignment: .leading){
                Text("Loving you girl")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Peder Elias")
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
