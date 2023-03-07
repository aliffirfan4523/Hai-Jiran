//
//  residentDetailView.swift
//  Hai_Jiran
//
//  Created by stdc user on 06/03/2023.
//

import SwiftUI

struct TouFixDetailView: View {
    var selectedTeamMember: TeamMember
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.white, Color("mainColorTheme")],
                startPoint: .top,
                endPoint: .bottom)
            .edgesIgnoringSafeArea(.top)
            VStack {
                Image(selectedTeamMember.photoName)
                    .resizable()
                    .aspectRatio( contentMode:
                            .fit)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(
                        .white, lineWidth: 4))
                    .shadow(radius: 7)
                Text(selectedTeamMember.name).font(.title).foregroundColor(.yellow).bold()
                    .shadow(radius: 2)
                Text(selectedTeamMember.description).font(.title2)
                    .foregroundColor(.white)
                HStack {
                    Text(selectedTeamMember.phone).bold()
                    Spacer().frame(width: 50)
                    Text(selectedTeamMember.address).bold()
                }
                HStack(alignment: .top, spacing: 10){
                    Button(action: {
                        print("Check my full bio at Web.")
                    }) {
                        Image(systemName: "globe")
                            .frame(maxWidth: 25, maxHeight: 25)
                            .padding()
                            .font(.body)
                            .foregroundColor(.white)
                            .background(Color.red)
                            .cornerRadius(10)
                    }
                    Button(action: {
                        guard let url = URL(string:"https://www.youtube.com")else{
                            return
                        }
                        print("Text me at Whatsapp")
                    }) {
                        Image(systemName: "ellipsis.bubble.fill")
                            .frame(maxWidth: 25, maxHeight: 25)
                            .padding()
                            .font(.body)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    Button(action: {
                        print("Wanna share something with me?")
                    }) {
                        Image(systemName: "square.and.arrow.up")
                            .frame(maxWidth: 25, maxHeight: 25)
                            .padding()
                            .font(.body)
                            .foregroundColor(.white)
                            .background(Color.green)
                            .cornerRadius(10)
                    }
                }
                .padding()
                Text("About Me").font(.title2).bold()
                Divider()
                Text(selectedTeamMember.about).multilineTextAlignment(.center)
            }
            .padding()
            .font(.custom("Avenir", size: 15))
        }
    }
}

struct TouFixDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TouFixDetailView(selectedTeamMember: testData[0])
    }
}

