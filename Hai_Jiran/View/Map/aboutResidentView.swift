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
    var teamMembers: [TeamMember] = []
    var body: some View {
        
            ForEach(teamMembers) { teamMember in
                TeamMemberCell(teamMember: teamMember)
            }//.navigationTitle("Group 5: Hi5! 🖐🏻")
                .navigationDestination(for: TeamMember.self, destination: {
                    teamMember in TouFixDetailView(selectedTeamMember: teamMember)
                }
            )
                .listStyle(PlainListStyle())
        
    }
}

struct AboutTouFixView_Previews: PreviewProvider {
    static var previews: some View {
        AboutResidentView(teamMembers: testData)
    }
}

struct TeamMemberCell: View {
    var teamMember: TeamMember
    var body: some View {
        NavigationLink(value: teamMember) {
            VStack {
                HStack {
                    Image(teamMember.photoName).resizable()
                        .frame(width: 64, height: 64)
                        .aspectRatio(contentMode: .fit)
                        .clipShape(Circle())
                        .overlay {
                            Circle().stroke(.white, lineWidth: 2)
                        }
                        .shadow(radius: 7)
                    Spacer().frame(width: 15)
                    VStack {
                        Text(teamMember.name)
                            .font(.custom("Avenir", size: 25))
                            .bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text(teamMember.description)
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
