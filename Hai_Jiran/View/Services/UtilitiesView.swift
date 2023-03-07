//
//  utilities.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

struct utilities: View {
    
    var Resident: [TeamMember]
    
    var body: some View {
        
        NavigationStack {
            //VStack {
                /*ZStack(alignment: .bottom){
                    Color("mainColorTheme")
                            VStack{
                                
                                Text("Utilities")
                                    .bold()
                                    .font(.title)
                                    .padding(20)
                                
                                
                                
                            }
                }.frame(height: 150).ignoresSafeArea()*/
                    List(Resident) { teamMember in
                        ServiceRow(Resident: teamMember)
                    }//.navigationTitle("Group 5: Hi5! 🖐🏻")
                    .listStyle(PlainListStyle())
                    .navigationDestination(for: TeamMember.self, destination: {
                            teamMember in TouFixDetailView(selectedTeamMember: teamMember)
                        })
            //}
        }
        
                
                
                
            
            
        }
        
    }


struct utilities_Previews: PreviewProvider {
    static var previews: some View {
        utilities(Resident: testData)
    }
}
