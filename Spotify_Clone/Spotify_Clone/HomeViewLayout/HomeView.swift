//
//  HomeView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/25.
//

import SwiftUI

struct HomeView: View {
    @State var time = Timer.publish(every: 0.1, on: .current, in: .tracking).autoconnect()
    @State var showStatusBarBackground: Bool = false
    
    var body: some View {
        VStack{
            ScrollView{
                HStack{
                    Spacer()
                    Button(action: {
                        
                    }){
                        Image("settings")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)
                    }
                    
                }
                .padding(8)
                .padding(.trailing, 16)
                
                HeroSectionView()
                
                RecentlyPlayedView()
                
                TopPodcastsView()
                
            }
            .padding(.bottom, 30)
            .background(LinearGradient(gradient: Gradient(colors: [Color.init(#colorLiteral(red: 0.262745098, green: 0.2470588235, blue: 0.2745098039, alpha: 1)) , .black]), startPoint: .topLeading, endPoint: .center)
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
        Rectangle().foregroundColor(Color.black.opacity(0.3))
            .frame(height: UIApplication.shared.windows.first?.safeAreaInsets.top == 0 ? 25 : 45).ignoresSafeArea()
    }
}
