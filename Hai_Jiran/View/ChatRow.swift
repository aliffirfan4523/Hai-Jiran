//
//  ChatRow.swift
//  Hai_Jiran
//
//  Created by stdc user on 28/02/2023.
//

import SwiftUI

struct ChatRow: View {
    var name:String
    var details:String
    var body: some View {
        ZStack(alignment: .leading){
            VStack{
                Spacer().frame(height: 10)
                HStack {
                    Spacer().frame(width: 10)
                    Text(name + " said")
                        .font(.system(size: 12,weight: .regular))
                        .lineLimit(2)
                        .foregroundColor(Color(.white))
                        .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                        .background(Color(0x5bd4a4))
                    .cornerRadius(15)
                    Spacer(minLength: 0)
                    Image(systemName: "clock").resizable().frame(width: 10, height: 10)
                    Text("7 Minutes ago")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                    Spacer().frame(width: 10)
                }
                Spacer(minLength: 0)
                HStack {
                    Text(details)
                        .font(.system(size: 12,weight: .regular))
                        .lineLimit(2)
                        .foregroundColor(Color(.black))
                        .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                    Spacer(minLength: 0)
                    Image(systemName: "button.programmable").resizable().frame(width: 25, height: 25).padding()
                }
                Spacer(minLength: 0)
                
            }
        }.frame(height: 90)
    }
}

struct CompletedChatRow: View {
    var name:String
    var details:String
    var body: some View {
        ZStack(alignment: .leading){
            VStack{
                Spacer().frame(height: 10)
                HStack {
                    Spacer().frame(width: 10)
                    Text(name + " said")
                        .font(.system(size: 12,weight: .regular))
                        .lineLimit(2)
                        .foregroundColor(Color(.white))
                        .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                        .background(Color(0x5bd4a4))
                    .cornerRadius(15)
                    Spacer(minLength: 0)
                    Image(systemName: "clock").resizable().frame(width: 10, height: 10)
                    Text("7 Minutes ago")
                        .font(.system(size: 10))
                        .foregroundColor(.gray)
                    Spacer().frame(width: 10)
                }
                Spacer(minLength: 0)
                HStack {
                    Text(details)
                        .font(.system(size: 12,weight: .regular))
                        .lineLimit(2)
                        .strikethrough()
                        .foregroundColor(Color(.black))
                        .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                    Spacer(minLength: 0)
                    Image(systemName: "arrow.backward").resizable().frame(width: 25, height: 25).padding()
                }
                Spacer(minLength: 0)
                
            }
        }.frame(height: 90)
    }
}

struct CompletedChatRow_Previews: PreviewProvider {
    static var previews: some View {
        ChatRow(name: "Ahmad Albab", details: "afasdsdasfashassrasdsdaaga")
    }
}
