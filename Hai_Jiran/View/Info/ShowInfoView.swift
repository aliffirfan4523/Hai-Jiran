//
//  show info.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

struct ShowInfoView: View {
    var info : Info
    var userData : Data?
    
    let dateFormatter = DateFormatter()
    let screenWidth = UIScreen.main.bounds.width
    let screenHeight = UIScreen.main.bounds.height
    
    var body: some View {
        ScrollView {
            VStack {
                ZStack(alignment: .bottom) {
                    Color("mainColorTheme")
                    
                    VStack {
                        Spacer().frame(height: 90)
                        HStack(){
                            CircleImage(
                                width: 90,
                                height: 80,
                                userData: userData)
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 35, trailing: 0))
                            VStack {
                                
                                Text(info.name).foregroundColor(.white).bold().font(.custom("Avenier", size: 20))
                                Text(info.contactNum).foregroundColor(.white).font(.custom("Avenier", size: 15))
                            }
                            Spacer().frame(width: 8)
                            
                        }
                    }
                }.ignoresSafeArea()
                    .frame(height: 155)
                
                if let data = info.image, let uiImage = UIImage(data: data) {
                    Image(uiImage: uiImage)
                        .resizable()
                        .frame(height: 250)
                        .aspectRatio(contentMode: .fit)
                        .offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                        .cornerRadius(25)
                        .padding()
                } else {
                    Image("blankphoto").resizable().frame(height: 250).aspectRatio(contentMode: .fit).offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6).cornerRadius(25).padding()
                }
                Spacer(minLength: 0)
                HStack(){
                    Spacer().frame(width: 8)
                    Text("He/She want to tell something...").bold().frame(height: 15)
                    Spacer()
                }.padding(9)
                VStack {
                    
                    Text(info.details)
                        .frame(width: 379).overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("mainColorTheme"), lineWidth: 2))
                    
                    HStack {
                        Spacer().frame(width: 15)
                        Text("Title").bold()
                        
                        Spacer()
                        Text(info.title).frame(height: 5)
                            .padding()
                        
                        Spacer()
                    }
                    
                    HStack {
                        
                        Spacer().frame(width: 15)
                            Text("Date").bold()
                            
                            Spacer()
                        
                        Text(time(date: info.date))
                            .padding()
                            .frame(height: 15)
                            .padding(0)
                        
                        Spacer().frame(width: 131)
                        }
                    HStack {
                        Spacer().frame(width: 15, height: 30)
                        Text("What Happen?").bold().frame(height: 15)
                        Spacer().frame(height: 15)
                    }
                    
                    
                    HStack {
                        
                        Text(info.description).padding(EdgeInsets(top: 0, leading: 5, bottom: 10, trailing: 10)).padding(5).overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("mainColorTheme"), lineWidth: 2)).padding()
                    }
                    Spacer()
                }
            
                HStack() {
                    Spacer().frame(width: 20)
                    Text("Please Call").bold().padding(.leading, -100.0)

                    
                    Button(action: {
                        if let link = URL(string:"https://wa.me/\(info.contactNum)") {
                            UIApplication.shared.open(link)
                        }
                    }){
                        HStack {
                            Image(systemName: "phone.circle").foregroundColor(.white)
                                .padding(10)
                        }.background(Color("mainColorTheme"))
                            .cornerRadius(45).padding(0.0)
                    }
                    Button(action: {
                        if let phoneURL = URL(string: "tel:\(info.contactNum)") {
                            UIApplication.shared.open(phoneURL)
                        }
                    }){
                        HStack {
                            Image(systemName: "phone.fill").foregroundColor(.white)
                                .padding(10)
                        }.background(Color("mainColorTheme"))
                            .cornerRadius(45).padding(0.0)
                    }
                }
                
                Spacer(minLength: 100)
            }
        }.ignoresSafeArea()
    }
    
    func time(date:Date) -> String{
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .none
        let date = Date()
        let dateString = dateFormatter.string(from: date)
        return dateString
    }
    
    struct show_info_Previews: PreviewProvider {
        static var previews: some View {
            ShowInfoView(
                info: Info(
                name: "Ahmasaad Naufsdafal",
                details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam",
                image: (UIImage(named: "eksiden"))!,
                title: "Esko",
                date: Date.now,
                description: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalamSaya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalamSaya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalamSaya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam",
                contactNum: "011231241234",
                personName: ""
            )
        )
            
        }
    }
}
