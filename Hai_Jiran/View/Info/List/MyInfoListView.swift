//
//  MyInfoListView.swift
//  Hai_Jiran
//
//  Created by stdc user on 08/03/2023.
//

import SwiftUI

struct MyInfoListView: View {
    @StateObject var userData = UserModel()
    
    @State private var isSwiped = false
    @State private var showDetail = false
    
    
    
    @EnvironmentObject var myInfo: UserModel

    var infoList : [Info] = []
    
    var body: some View {
        
        NavigationStack{
            List(infoList){ info in
                MyInfoRow(info: info,name: info.name, details: info.details)
                    .swipeActions(edge: .trailing,allowsFullSwipe: false, content: {
                        Button(role: .destructive, action: {
                            add(info: info)
                            delete(info: info)
                        }, label: {
                            Label("Done", systemImage: "square.and.pencil")
                        }).tint(.green)
                        NavigationLink(destination: EditInfoView(info: info), isActive: $showDetail){
                            Button(role: .none, action: {
                                
                            }, label: {
                                Label("Edit", systemImage: "square.and.pencil")
                            }).tint(.red)
                        }
                        
                        Button(role: .cancel, action: {
                            myInfo.share()
                        }, label: {
                            Label("Share", systemImage: "square.and.arrow.up")
                        }).tint(.blue)
                        
                    })
            }.navigationDestination(for: Info.self, destination: {
                info in ShowInfoView(info: info,userData: userData.UserList[0].image)
            }).environmentObject(userData)
            
                .listStyle(PlainListStyle())
        }
    }
    
    
    func delete(info: Info) {

        myInfo.myInfos.removeAll(where: { $0.title == info.title })
            myInfo.newInfos.removeAll(where: { $0.title == info.title })
    }
    func add(info: Info) {
        myInfo.completedInfos.append(info)
    }
}


