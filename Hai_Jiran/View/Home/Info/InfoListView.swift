//
//  InfoListView.swift
//  Hai_Jiran
//
//  Created by stdc user on 28/02/2023.
//

import SwiftUI



struct NewInfoListView: View {
    @State private var isSwiped = false

    
    var body: some View {
        NavigationStack {
            List {
                ForEach(infos) { info in
                    Button(action: {
                                withAnimation {
                                }
                            }) {
                                ChatRow(name: info.name, details: info.details)
                            }
                        
                        .swipeActions(edge: .trailing,allowsFullSwipe: true, content: {
                            Button(role: .destructive, action: {
                                
                            }, label: {
                                Label("Delete", systemImage: "trash")
                            })
                            Button(role: .none, action: {
                                
                            }, label: {
                                Label("Delete", systemImage: "trash")
                            })
                        })
                }
            }
            .listStyle(PlainListStyle())
        }
            
        
    }
    func delete(at offsets: IndexSet) {
        infos.remove(atOffsets: offsets)
        }
}

struct MyInfoListView_Previews: PreviewProvider {
    static var previews: some View {
        NewInfoListView()
    }
}

struct MyInfoListView: View {
    var body: some View{
        ZStack {
            List{
                ChatRow(name: "I", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
                ChatRow(name: "I", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
                ChatRow(name: "I", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
                ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
                ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
                ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            }.listStyle(PlainListStyle())
            VStack {
            Spacer()
            }
        }
    }
}

struct CompletedInfoListView: View {
    var body: some View{
        List{
            CompletedChatRow(name: "I", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            CompletedChatRow(name: "I", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            CompletedChatRow(name: "I", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            CompletedChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            CompletedChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            CompletedChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
        }.listStyle(PlainListStyle())
    }
}
