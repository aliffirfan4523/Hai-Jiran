//
//  residentDetailView.swift
//  Hai_Jiran
//
//  Created by stdc user on 06/03/2023.
//

import SwiftUI

struct TouFixDetailView: View {
    var selectedTeamMember: TeamMember
    
    @EnvironmentObject var newInfo: UserModel
    
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
                if let image = UIImage(named: selectedTeamMember.photoName),
                   let imageData = image.jpegData(compressionQuality: 0.0) {
                    let compressedImage = UIImage(data: imageData)
                    Image(uiImage: compressedImage!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(.white, lineWidth: 4))
                        .shadow(radius: 7)
                } else {
                    // Handle invalid image name or data
                }
                Text(selectedTeamMember.name)
                    .font(.title)
                    .foregroundColor(.black)
                    .bold()
                    .shadow(radius: 2)
                Text(selectedTeamMember.description).font(.title2)
                    .foregroundColor(.black)
                HStack {
                    Text(selectedTeamMember.phone).bold()
                    Spacer().frame(width: 50)
                    Text(selectedTeamMember.address).bold()
                }
                HStack(alignment: .top, spacing: 10){
                    Button(action: {
                        //print("Check my full bio at Web.")
                        if let phoneURL = URL(string: "tel:\(selectedTeamMember.phone)") {
                            UIApplication.shared.open(phoneURL)
                        }
                        //Link(selectedTeamMember.phone, destination: URL(string: "tel:\(selectedTeamMember.phone)")!)
                    }) {
                        Image(systemName: "phone.circle")
                            .frame(maxWidth: 25, maxHeight: 25)
                            .padding()
                            .font(.body)
                            .foregroundColor(.white)
                            .background(Color.green.opacity(0.9))
                            .cornerRadius(10)
                    }
                    Button(action: {
                        if let link = URL(string:"https://wa.me/\(selectedTeamMember.phone)") {
                            UIApplication.shared.open(link)
                        }
                        //print("Text me at Whatsapp")
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
                        newInfo.share()
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
                Text("About Me").font(.title2).bold().foregroundColor(.black)
                Divider()
                Text(selectedTeamMember.about)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.black)
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

