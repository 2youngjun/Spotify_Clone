//
//  GoodAfternoonView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/28.
//

import SwiftUI

struct GoodAfternoonView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Good Afternoon")
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Button(action: {}){
                    Image(systemName: "bell")
                        .resizable()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.white)
                        .padding(.trailing, 16)
                }
                
                Button(action: {}){
                    Image(systemName: "clock.arrow.circlepath")
                        .resizable()
                        .frame(width: 25, height: 22)
                        .foregroundColor(.white)
                        .padding(.trailing, 16)
                }
                
                Button(action: {}){
                    Image(systemName: "gearshape")
                        .resizable()
                        .frame(width: 22, height: 22)
                        .foregroundColor(.white)
                        .padding(.trailing, 2)
                }
            }
            
            HStack(spacing: 8){
                ZStack(alignment: .leading){
                    Rectangle()
                        .fill(Color.init(#colorLiteral(red: 54/255, green: 57/255, blue: 77/255, alpha: 1)))
                        .frame(width: 180, height: 60)
                        .cornerRadius(2)
                    HStack(spacing: 8){
                        Image("heartAfternoon")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .cornerRadius(2)
                        Text("Thumbs up")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
                
                ZStack(alignment: .leading){
                    Rectangle()
                        .fill(Color.init(#colorLiteral(red: 54/255, green: 57/255, blue: 77/255, alpha: 1)))
                        .frame(width: 180, height: 60)
                        .cornerRadius(2)
                    HStack(spacing: 8){
                        Image("radioAfternoon")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .cornerRadius(2)
                        Text("Hkeem radio")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                    }
                }
            }
        }.padding()
    }
}

struct GoodAfternoonView_Previews: PreviewProvider {
    static var previews: some View {
        GoodAfternoonView()
    }
}
