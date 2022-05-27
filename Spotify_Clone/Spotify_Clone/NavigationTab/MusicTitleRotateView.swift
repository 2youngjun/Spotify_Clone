//
//  MusicTitleRotateView.swift
//  Spotify_Clone
//
//  Created by 이영준 on 2022/05/28.
//

import SwiftUI

struct Marque: View {
    let text: String
    var paddingTop: CGFloat
    @State private var moveView = false
    @State private var stopAnimation = false
    @State private var textFrame: CGRect = CGRect()
    
    public init(text: String, paddingTop: CGFloat) {
        self.text = text
        self.paddingTop = paddingTop
    }
    
    var body: some View {
        GeometryReader { proxy in
            ScrollView(.horizontal, showsIndicators: false, content: {
                Text(text)
                    .lineLimit(1)
                    .background(MusicTitleRotateView(rect: $textFrame)).offset(moveView ? CGSize(width: -1 * textFrame.width, height: 0) : CGSize(width: proxy.size.width, height: 0))
                    .onAppear() {
                        self.stopAnimation = false
                        animateView()
                        moveViewOnAnimationEnd()
                        //scrollViewProxy.scrollTo("Identifier") /// does not animate
                    }
                    .onDisappear() {
                        self.stopAnimation = true
                    }
            })
            .mask(LinearGradient(gradient: Gradient(colors: [Color.clear, Color.black, Color.black, Color.clear]), startPoint: .leading, endPoint: .trailing))
            .padding(.top, paddingTop)
        }
    }
    private func animateView() {
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.2, execute: { //after 0.5 sec
            withAnimation(Animation.linear(duration: Double(textFrame.width) * 0.01)) {
                moveView = true
            }
            //no on completion so need to add another time bound method to restart animation from start
        })
    }
    private func moveViewOnAnimationEnd() {
        let timeToAnimate = (Double(textFrame.width) * 0.01) + 0.6
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + timeToAnimate, execute: { //after 0.5 sec
            moveView = false
            if stopAnimation == false {
                animateView()
                moveViewOnAnimationEnd()
            }
        })
    }
}

struct MusicTitleRotateView: View {
    @Binding var rect: CGRect

    var body: some View {
        GeometryReader { (proxy) -> Path in
            DispatchQueue.main.async {
                self.rect = proxy.frame(in: .global)
            }
            return Path()
        }
    }
}

