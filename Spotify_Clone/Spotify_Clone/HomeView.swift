//
//  HomeView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/25.
//

import SwiftUI

struct HomeView: View {
    let columns = [
        GridItem(),
        GridItem()
    ]
    
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Image("settings")
                    .resizable()
                    .frame(width: 25, height: 25)
            }
            .padding(.bottom, 10)
            
            Text("Good evening")
                .font(.title)
                .bold()
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
