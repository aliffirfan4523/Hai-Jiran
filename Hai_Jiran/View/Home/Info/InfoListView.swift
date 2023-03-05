//
//  InfoListView.swift
//  Hai_Jiran
//
//  Created by stdc user on 28/02/2023.
//

import SwiftUI



struct NewInfoListView: View {
    @StateObject var userData = UserModel()
    @State private var isSwiped = false
    @EnvironmentObject var newInfo: UserModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(newInfo.newInfos) { info in
                    Button(action: {
                                withAnimation {
                                }
                            }) {
                                ChatRow(name: info.name, details: info.details)
                            }
                        
                        .swipeActions(edge: .trailing,allowsFullSwipe: false, content: {
                            Button(role: .none, action: {
                            }, label: {
                                Label("Read", systemImage: "doc.text.magnifyingglass")
                            }).tint(.green)
                            Button(role: .cancel, action: {
                                newInfo.share()
                            }, label: {
                                Label("Share", systemImage: "square.and.arrow.up")
                            }).tint(.blue)
                        })
                }
            }
            .listStyle(PlainListStyle())
            .onAppear {
                // Get the latest data from the array and update the state variable
                newInfo.newInfos = newInfo.newInfos
            }
        }.environmentObject(userData)
            
        
    }
    func delete(at offsets: IndexSet) {
        newInfo.newInfos.remove(atOffsets: offsets)
        }
}

struct MyInfoListView_Previews: PreviewProvider {
    static var previews: some View {
        CompletedInfoListView()
    }
}

struct MyInfoListView: View {
    @StateObject var userData = UserModel()
    @State private var isSwiped = false
    @EnvironmentObject var myInfo: UserModel

    
    var body: some View {
        NavigationStack {
            List {
                ForEach(myInfo.myInfos) { info in
                    Button(action: {
                        withAnimation {
                                        self.isSwiped.toggle()
                                    }
                            }) {
                                ChatRow(name: info.name, details: info.details)
                            }
                        
                        .swipeActions(edge: .trailing,allowsFullSwipe: false, content: {
                            Button(role: .destructive, action: {
                                add(info: info)
                                delete(info: info)
                            }, label: {
                                Label("Done", systemImage: "square.and.pencil")
                            }).tint(.green)
                            Button(role: .none, action: {
                                
                            }, label: {
                                Label("Edit", systemImage: "square.and.pencil")
                            }).tint(.red)
                            Button(role: .cancel, action: {
                                myInfo.share()
                            }, label: {
                                Label("Share", systemImage: "square.and.arrow.up")
                            }).tint(.blue)
                            
                        })
                }
            }
            .listStyle(PlainListStyle())
        }.environmentObject(userData)
    }
    
    
    
    func delete(info: Info) {

        if let index = myInfo.myInfos.firstIndex(where: { $0.id == info.id }) {
            myInfo.myInfos.remove(at: index)
            myInfo.newInfos.remove(at: index)
        }
    }
    func add(info: Info) {

        myInfo.completedInfos.append(info)
    }
}

struct CompletedInfoListView: View {
    @State private var isSwiped = false
    @EnvironmentObject var completedinfo: UserModel
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(completedinfo.completedInfos) { info in
                    Button(action: {
                                withAnimation {
                                }
                            }) {
                                CompletedChatRow(name: info.name, details: info.details)
                            }
                        
                        .swipeActions(edge: .trailing,allowsFullSwipe: false, content: {
                            Button(role: .destructive, action: {
                                delete(info: info)
                            }, label: {
                                Label("Delete", systemImage: "trash")
                            })
                        })
                }
            }
            .listStyle(PlainListStyle())
        }
            
        
    }
    func delete(info: Info) {

        if let index = completedinfo.completedInfos.firstIndex(where: { $0.id == info.id }) {
            completedinfo.completedInfos.remove(at: index)
            
        }
    }
}
