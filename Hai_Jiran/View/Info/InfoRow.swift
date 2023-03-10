//
//  ChatRow.swift
//  Hai_Jiran
//
//  Created by stdc user on 28/02/2023.
//

import SwiftUI

struct NewInfoRow: View {
    var info : Info
    var name:String
    var details:String
    
    var body: some View {
        
            VStack{
                Spacer().frame(height: 10)
                HStack {
                    Spacer().frame(width: 10)
                    Text(name + " said")
                        .font(.system(size: 12,weight: .regular))
                        .lineLimit(2)
                        .foregroundColor(Color(.white))
                        .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                        .background(Color("mainColorTheme"))
                        .cornerRadius(15)
                    Spacer(minLength: 0)
                    Image(systemName: "clock").resizable().frame(width: 10, height: 10)
                    Text(returnDateAgo(dateData: info.date))
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
                }
                Spacer(minLength: 0)
            }.frame(height: 90)
        
    }
}

struct MyInfoRow: View {
    var info : Info
    var name:String
    var details:String
    
    var body: some View {
        NavigationLink(value: info){
            ZStack(alignment: .leading){
                VStack{
                    Spacer().frame(height: 10)
                    HStack {
                        Spacer().frame(width: 10)
                        Text("I said")
                            .font(.system(size: 12,weight: .regular))
                            .lineLimit(2)
                            .foregroundColor(Color(.white))
                            .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                            .background(Color("mainColorTheme"))
                        .cornerRadius(15)
                        Spacer(minLength: 0)
                        Image(systemName: "clock").resizable().frame(width: 10, height: 10)
                        Text(returnDateAgo(dateData: info.date))
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
                    }
                    Spacer(minLength: 0)
                    
                }
            }.frame(height: 90)
        }
    }
}

struct CompletedChatRow: View {
    var info : Info
    var name:String
    var details:String
    
    var body: some View {
        NavigationLink(value:info){
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
                            .background(Color("mainColorTheme"))
                        .cornerRadius(15)
                        Spacer(minLength: 0)
                        Image(systemName: "clock").resizable().frame(width: 10, height: 10)
                        Text(returnDateAgo(dateData: info.date))
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
                    }
                    Spacer(minLength: 0)
                    
                }
            }.frame(height: 90)
        }
    }
}

func returnDateAgo(dateData : Date) -> String{
    let date = dateData.addingTimeInterval(-15000)

    let formatter = RelativeDateTimeFormatter()
    formatter.unitsStyle = .full
    let string = formatter.localizedString(for: date, relativeTo: Date())
    return string
}

extension Date {
    func timeAgoDisplay() -> String {
        let formatter = RelativeDateTimeFormatter()
        formatter.unitsStyle = .full
        return formatter.localizedString(for: self, relativeTo: Date())
    }
}
struct CompletedChatRow_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
