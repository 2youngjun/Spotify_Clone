//
//  HeroSectionView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/25.
//

import SwiftUI

struct HeroSectionView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    var body: some View {
        VStack(spacing: 0){
            // SectionTitle View 를 따로 생성
            // HomeView 에 자주 쓰이기 때문
            SectionTitle(title: "Trending now")
            
            LazyVGrid(columns: columns, spacing: 8){
                ForEach(GenericContent.heroData){ hero in
                    HStack{
                        // 일치
                        Image(hero.imageName)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        // Text 처리 확인
                        Text(hero.title)
                            .foregroundColor(.white)
                            .fontWeight(.semibold)
                            .font(.footnote)
                            .lineLimit(2)
                        
                        Spacer()
                    }
                    // 적절한 Frame_height 크기를 확인해볼 필요 O
                    .frame(height: 60)
                    // opacity 를 통해 Background 색상 설정
                    .background(Color.white.opacity(0.085))
                    .cornerRadius(5)
                }
            }
            // padding의 역할 매우 중요!!
            .padding()
        }
    }
}

struct HeroSectionView_Previews: PreviewProvider {
    static var previews: some View {
        HeroSectionView()
    }
}
