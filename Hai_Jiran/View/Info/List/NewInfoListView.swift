//
//  NewInfo.swift
//  Hai_Jiran
//
//  Created by stdc user on 07/03/2023.
//

import SwiftUI

struct NewInfoListView: View {
    @StateObject var userData = UserModel()
    @State private var isSwiped = false
    @State private var showDetail = false
    
    var infoList : [Info] = []
    
    @EnvironmentObject var newInfo: UserModel
    @State private var selectedInfo: Info?
    
    var body: some View {
        NavigationStack{
            List(infoList){ info in
                NavigationLink(value:info){
                    NewInfoRow(info: info,name: info.name, details: info.details)
                        .swipeActions(edge: .trailing,allowsFullSwipe: false, content: {
                            Button(role: .cancel, action: {
                                newInfo.share()
                            }, label: {
                                Label("Share", systemImage: "square.and.arrow.up")
                            }).tint(.blue)
                        }
                    )
                }
            }.navigationDestination(for: Info.self, destination: {
                info in ShowInfoView(info: info,userData: userData.UserList[0].image)
            })
            .environmentObject(userData)
            
            .listStyle(PlainListStyle())
        }
            /*.onAppear {
                // Get the latest data from the array and update the state variable
                newInfo.newInfos = newInfo.newInfos
                print(newInfo.UserList[0])
            }*/
    }
    func delete(at offsets: IndexSet) {
        newInfo.newInfos.remove(atOffsets: offsets)
        }
}


struct NewInfo_Previews: PreviewProvider {
    static var previews: some View {
        NewInfoListView()
    }
}

