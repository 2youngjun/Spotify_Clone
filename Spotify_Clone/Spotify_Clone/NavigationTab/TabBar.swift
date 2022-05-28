//
//  TabBar.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/23.
//

import SwiftUI

struct TabBar: View {
    @State private var isPlayer : Bool = false
    init(){
        UITabBar.appearance().backgroundColor = UIColor.black
        UITabBar.appearance().tintColor = #colorLiteral(red: 0.9960784314, green: 0.9960784314, blue: 1, alpha: 1)
    }
    
    var body: some View {
        TabView{
            NavigationView{
                ZStack(alignment: .bottom){
                    HomeView()
                    NowPlayingView()
                        .onTapGesture{
                            withAnimation{
                                isPlayer.toggle()
                            }
                        }
                        .fullScreenCover(isPresented: $isPlayer){
                            MusicPlayerView(nowPlayingBack: $isPlayer)
                        }
                }
                .navigationBarHidden(true)
            }
            .tabItem{
                Image(systemName: "house.fill")
                Text("Home")
            }
            
            NavigationView{
                Text("Search")
            }
            .tabItem{
                Image(systemName: "magnifyingglass")
                Text("Search")
            }
            
            NavigationView{
                Text("Your Library")
            }
            .tabItem{
                Image(systemName: "books.vertical")
                Text("Your Library")
            }
        }
        .accentColor(.white)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
