//
//  CompletedInfoListView.swift
//  Hai_Jiran
//
//  Created by stdc user on 08/03/2023.
//

import SwiftUI

struct CompletedInfoListView: View {
    @State private var isSwiped = false
    @EnvironmentObject var userData: UserModel
    
    var infoList : [Info] = []
    
    var body: some View {
        
        NavigationStack{
            List(infoList){ info in
                NewInfoRow(info: info,name: info.name, details: info.details)
                    .swipeActions(edge: .trailing,allowsFullSwipe: false, content: {
                        Button(role: .destructive, action: {
                            delete(info: info)
                        }, label: {
                            Label("Delete", systemImage: "trash")
                        })
                    })
            }.navigationDestination(for: Info.self, destination: {
                info in ShowInfoView(info: info,userData: userData.UserList[0].image)
            }).environmentObject(userData)
            
                .listStyle(PlainListStyle())
        }
            
        
    }
    func delete(info: Info) {

        if let index = userData.completedInfos.firstIndex(where: { $0.id == info.id }) {
            userData.completedInfos.remove(at: index)
            
        }
    }
}
