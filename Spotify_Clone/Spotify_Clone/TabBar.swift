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

