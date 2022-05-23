//
//  TabBar.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/23.
//

import SwiftUI

struct TabBar: View {
    var body: some View {
        TabView{
            NavigationView{
                Text("Home")
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
        .accentColor(.black)
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
