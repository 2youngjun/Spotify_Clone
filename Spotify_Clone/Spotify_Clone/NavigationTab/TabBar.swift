//
//  TabBar.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/23.
//

import SwiftUI

struct TabBar: View {
    @State private var isPlayer : Bool = false
    init() {
        UITabBar.appearance().barTintColor = .black
        UITabBar.appearance().tintColor = .white
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
                MusicPlayerView()
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
            .transition(.move(edge: .bottom))
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}

struct NavigationConfigurator: UIViewControllerRepresentable {
    var configure: (UINavigationController) -> Void = { _ in }
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<NavigationConfigurator>) -> UIViewController {
        UIViewController()
    }
    func updateUIViewController(_ uiViewController: UIViewController, context: UIViewControllerRepresentableContext<NavigationConfigurator>) {
        if let nc = uiViewController.navigationController {
            self.configure(nc)
        }
    }
}

