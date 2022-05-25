//
//  RecentlyPlayedView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/25.
//

import SwiftUI

struct RecentlyPlayedView: View {
    var body: some View {
        VStack{
            SectionTitle(title: "Recently played")
            // ScrollView 의 인자 확인 필요
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 16){
                    ForEach(GenericContent.recentlyPlayedData){ recent in
                        VStack(alignment: .leading){
                            Image(recent.imageName)
                                .resizable()
                                .frame(width: 130, height: 130)
                                .cornerRadius(3)
                            
                            Text(recent.title)
                                .foregroundColor(.white)
                                .font(.subheadline)
                                .fontWeight(.semibold)
                        }
                    }
                }
                .padding()
                .padding(.top, -16)
            }
        }
        
    }
}

struct RecentlyPlayedView_Previews: PreviewProvider {
    static var previews: some View {
        RecentlyPlayedView()
    }
}
