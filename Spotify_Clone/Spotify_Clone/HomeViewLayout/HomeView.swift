//
//  HomeView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/25.
//

import SwiftUI

struct HomeView: View {
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
                
                
                
            }
        }
        .preferredColorScheme(.dark)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
