//
//  SectionTitle.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/25.
//

import SwiftUI

struct SectionTitle: View {
    var title: String
    var body: some View {
        HStack{
            Text(title)
                .foregroundColor(.white)
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.leading)
            
            Spacer()
        }
    }
}

