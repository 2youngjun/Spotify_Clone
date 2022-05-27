//
//  TopPodcastsView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/25.
//

import SwiftUI

struct TopPodcastsView: View {
    var body: some View {
        VStack{
            SectionTitle(title: "Your top podcasts")
            ScrollView(.horizontal, showsIndicators: false){
                HStack(spacing: 16){
                    ForEach(GenericContent.podcastsData){ cast in
                        VStack(alignment: .leading){
                            Image(cast.imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .cornerRadius(1)
                                .frame(width: 170, height: 170)
                            
                            if let subTitle = cast.subTitle{
                                Text(cast.title)
                                    .foregroundColor(.white)
                                    .fontWeight(.semibold)
                                
                                Text(subTitle)
                                    .foregroundColor(.gray)
                                    .font(.subheadline)
                            } else {
                                Text(cast.title)
                                    .foregroundColor(.gray)
                                    .fontWeight(.medium)
                                    .font(.body)
                                    .frame(width: 170)
                                    .lineLimit(2)
                                    .multilineTextAlignment(.leading)
                            }
                        }
                        .frame(width: 170)
                    }
                }
                .padding()
                .padding(.top, -16)
            }
        }
    }
}

