//
//  SplashScreenView.swift
//  Hai_Jiran
//
//  Created by stdc user on 04/03/2023.
//

import SwiftUI

struct SplashScreenView: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        if  isActive {
            StartingPages()
        } else {
            ZStack {
                Color("mainColorTheme")
                    .ignoresSafeArea()
                VStack(spacing: 5) {
                    Image("AppLogo")
                        .resizable()
                        .frame(width: 195, height: 195)
                    Image("AppName")
                        .resizable()
                        .frame(width: 195, height: 70)
                    Text("Make a Stronger Bond Between Neighbour!")
                        .font(Font.custom("HanziPen TC-Regular", size: 15))
                        .foregroundColor(.white)
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear {
                    withAnimation(.easeIn(duration: 1.2)) {
                        self.size = 0.9
                        self.opacity = 1.0
                    }
                }
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                    withAnimation {
                        self.isActive = true
                    }
                    }
            }
        }
    }
}

struct SplashScreenView_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreenView()
    }
}
