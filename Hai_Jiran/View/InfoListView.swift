//
//  InfoListView.swift
//  Hai_Jiran
//
//  Created by stdc user on 28/02/2023.
//

import SwiftUI

struct NewInfoListView: View {
    var body: some View {
        List{
            ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
            ChatRow(name: "Ahmad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam")
        }.listStyle(PlainListStyle())
        
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
