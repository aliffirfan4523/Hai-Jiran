//
//  aboutResidentView.swift
//  Hai_Jiran
//
//  Created by stdc user on 06/03/2023.
//

import SwiftUI

extension Color {
    static let ui = Color.UI()
    
    struct UI {
        let primary = Color.white
    }
}

struct AboutResidentView: View {
    var teamMembers: [PenggunaModel] = []
    var body: some View {
        
            ForEach(teamMembers) { teamMember in
                TeamMemberCell(teamMember: teamMember)
            }//.navigationTitle("Group 5: Hi5! 🖐🏻")
                .navigationDestination(for: PenggunaModel.self, destination: {
                    teamMember in TouFixDetailView(selectedTeamMember: teamMember)
                }
            )
                .listStyle(PlainListStyle())
        
    }
}


struct TeamMemberCell: View {
    var teamMember: PenggunaModel
    var body: some View {
        NavigationLink(value: teamMember) {
            VStack {
                HStack {
                    Spacer().frame(width: 20)
//                    Image(teamMember.image).resizable()
//                        .frame(width: 64, height: 64)
//                        .aspectRatio(contentMode: .fit)
//                        .clipShape(Circle())
//                        .overlay {
//                            Circle().stroke(.white, lineWidth: 2)
//                        }
//                        .shadow(radius: 7)
                    CircleImage(width: 64,height: 64,userData: teamMember.image)
                    Spacer().frame(width: 15)
                    VStack {
                        Text(teamMember.fullName)
                        
                            .font(.custom("Avenir", size: 25))
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(teamMember.fullAddress)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                }.padding(5)
                    .font(.custom("Avenir", size: 15))
                    .foregroundColor(.black)
                    .background(Color.ui.primary)
            }
        }
    }
}
