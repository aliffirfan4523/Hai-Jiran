//
//  show info.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

struct ShowInfoView: View {
    var info : Info = Info(
        name: "Ahmasaad Naufsdafal",
        details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam",
        image: UIImage(),
        title: "Esko",
        date: Date.now,
        description: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalamSaya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalamSaya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalamSaya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam",
        contactNum: "",
        personName: "")
    
    
    
    var body: some View {
        ScrollView {
            VStack {
                
                ZStack(alignment: .bottom) {
                    Color("mainColorTheme")
                    
                    VStack {Spacer().frame(height: 99)
                        Spacer().frame(height: 30)
                        HStack(){
                            CircleImage(width: 90,height: 80).padding(EdgeInsets(top: 0, leading: 0, bottom: 35, trailing: 0))
                            VStack {
                                Text(info.name).foregroundColor(.white).bold().font(.custom("Avenier", size: 25))
                                Text(info.contactNum).foregroundColor(.white).font(.custom("Avenier", size: 20))
                            }
                            Spacer().frame(width: 8)
                            
                        }
                    }
                }.ignoresSafeArea()
                    .frame(height: 155)
                
                Image("kakton").resizable().frame(height: 250).aspectRatio(contentMode: .fit).offset(x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 6)
                HStack(){
                    Spacer().frame(width: 8)
                    Text("He/She want to tell something...").bold().frame(height: 15)
                    Spacer()
                }.padding(9)
                VStack {
                    
                    Text(info.details).frame(width: 379)
                    
                    HStack {
                        Spacer().frame(width: 15)
                        Text("Title").bold()
                        
                        Spacer()
                        Text(info.title).frame(height: 15)
                        
                        Spacer()
                    }
                    Spacer().frame(height: 15)
                    
                    HStack {
                        
                        Spacer().frame(width: 15)
                            Text("From").bold()
                            
                            Spacer()
                        
                        Text("March, 17,2022").padding().frame(height: 15)
                        
                        Spacer().frame(width: 131)
                        }
                    HStack {
                        Spacer().frame(width: 15)
                        Text("What Happen?").bold().frame(height: 15)
                        Spacer().frame(height: 15)
                    }
                    
                    
                    HStack {
                        Spacer().frame(width: 15)
                        Text(info.description).padding(EdgeInsets(top: 10, leading: 1, bottom: 10, trailing: 10))
                    }
                    Spacer()
                }
            
                HStack() {
                    Spacer().frame(width: 20)
                    Text("Please Call").bold().padding(.leading, -100.0)

                    
                    Button(action: {}){
                        HStack {
                            Image(systemName: "phone.circle").foregroundColor(.white)
                                .padding(10)
                            
                            Spacer().frame(width: 10)
                            VStack {
                                Text("Kak Ton").foregroundColor(.white)
                                Text("018-354 5796").foregroundColor(.white)
                            }.padding(5)
                        
                            Spacer().frame(width: 10)
                            
                        }.background(Color("mainColorTheme"))
                            .cornerRadius(45).padding(0.0)
                    }
                }
                
                Spacer()
            }
        }.ignoresSafeArea()
            
    }
    
    
    struct show_info_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
