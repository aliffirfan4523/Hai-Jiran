//
//  UtilitieRow.swift
//  Hai_Jiran
//
//  Created by stdc user on 03/03/2023.
//

import SwiftUI



struct CompletedChatRow1_Previews: PreviewProvider {
    static var previews: some View {
        ServiceRow(Resident: UserModel().UserList[0])
    }
}

struct ServiceRow: View {
    
    var Resident: PenggunaModel
    
    var body: some View {
        
        NavigationLink(value: Resident) {
            HStack{
                if let data = Resident.image, let uiImage = UIImage(data: data) {
                    Image(uiImage: uiImage).resizable().resizable()
                        .aspectRatio( contentMode:.fit)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(
                            .white, lineWidth: 4))
                        .shadow(radius: 7)
                }
                Spacer().frame(width: 20)
                VStack{
                    Text(Resident.fullName)
                        .font(.system(size: 25,weight: .bold))
                        .lineLimit(2)
                        .foregroundColor(Color("textTheme"))
                    .cornerRadius(15)
                    HStack {
                        Text(Resident.currentJob)
                            .font(.system(size: 15))
                        .foregroundColor(.gray)
                        Text(Resident.fullAddress)
                            .font(.system(size: 15))
                        .foregroundColor(.gray)
                    }
                }
                Spacer()
            }.frame(height: 70)
                .swipeActions(edge: .trailing,allowsFullSwipe: false, content: {
                    Button(role: .none, action: {
                        
                    }, label: {
                        Label("Read", systemImage: "doc.text.magnifyingglass")
                    }).tint(.green)
                    Button(role: .cancel, action: {
                        
                    }, label: {
                        Label("Share", systemImage: "square.and.arrow.up")
                    }).tint(.blue)
                }
            )
        }
    }
}
