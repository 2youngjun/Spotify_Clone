//
//  HomeView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/25.
//

import SwiftUI

struct HomeView: View {
    @State var showStatusBarBackground: Bool = false
    
    var body: some View {
        VStack{
            ScrollView{
                GoodAfternoonView()
                
                HeroSectionView()
                
                RecentlyPlayedView()
                
                TopPodcastsView()
            }
            .padding(.bottom, 30)
            .background(LinearGradient(gradient: Gradient(colors: [Color.init(red: 85/255, green: 70/255, blue: 224/255) , .black]), startPoint: .topLeading, endPoint: .center)
            .edgesIgnoringSafeArea(.all))
            if showStatusBarBackground { TopView() }
        }
        .preferredColorScheme(.dark)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TopView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(Color.blue.opacity(0.3))
            .frame(height: UIApplication.shared.windows.first? .safeAreaInsets.top == 0 ? 25 : 45)
            .ignoresSafeArea()
    }
}
