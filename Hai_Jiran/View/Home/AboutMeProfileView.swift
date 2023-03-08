//
//  AboutMeProfileView.swift
//  Hai_Jiran
//
//  Created by stdc user on 08/03/2023.
//

import SwiftUI

import SwiftUI

struct AboutMeProfileView: View {
    
    var userdetails: PenggunaModel
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [
                    Color("mainColorTheme"),
                    Color("mainColorTheme")
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.top)
            VStack {
                if let data = userdetails.image, let uiImage = UIImage(data: data) {
                    Image(uiImage: uiImage).resizable().resizable()
                        .aspectRatio( contentMode:.fit)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(
                            .white, lineWidth: 4))
                        .shadow(radius: 7)
                }
                    
                Text(userdetails.profileName)
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .shadow(radius: 2)
                Text(userdetails.mobileNum).font(.title2)
                    .foregroundColor(.black)
                HStack {
                    Text(userdetails.fullAddress).bold()
                    Spacer().frame(width: 50)
                    Text(userdetails.currentJob).bold()
                }
                .padding()
                Text("About Me").font(.title2).bold().foregroundColor(.black)
                Divider()
                Text(userdetails.userAge)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
            }
            .padding()
            .font(.custom("Avenir", size: 15))
        }
    }
}
