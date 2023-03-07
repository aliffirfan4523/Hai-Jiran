//
//  UtilitieRow.swift
//  Hai_Jiran
//
//  Created by stdc user on 03/03/2023.
//

import SwiftUI



struct CompletedChatRow1_Previews: PreviewProvider {
    static var previews: some View {
        ServiceRow(Resident: testData[0])
    }
}

struct ServiceRow: View {
    
    var Resident: TeamMember
    
    var body: some View {
        
        NavigationLink(value: Resident) {
            HStack{
                Image(Resident.photoName).resizable()
                    .frame(width: 100, height: 64)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay {
                        Circle().stroke(.white, lineWidth: 2)
                    }
                    .shadow(radius: 7)
                Spacer().frame(width: 20)
                VStack{
                    Text(Resident.name)
                        .font(.system(size: 25,weight: .bold))
                        .lineLimit(2)
                        .foregroundColor(Color("textTheme"))
                    .cornerRadius(15)
                    HStack {
                        Text(Resident.workType)
                            .font(.system(size: 15))
                        .foregroundColor(.gray)
                        Text(Resident.address)
                            .font(.system(size: 15))
                        .foregroundColor(.gray)
                    }
                }
                Spacer()
            }.frame(height: 70)
        }
    }
}
