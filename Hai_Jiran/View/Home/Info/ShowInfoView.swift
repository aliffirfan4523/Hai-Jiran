//
//  show info.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

struct ShowInfoView: View {
    var body: some View {
        ScrollView {
            VStack {
                
                ZStack(alignment: .bottom) {
                    Color("mainColorTheme")
                    
                    VStack {Spacer().frame(height: 99)
                        HStack(){
                            CircleImage().padding(EdgeInsets(top: 0, leading: 0, bottom: 35, trailing: 0))
                            VStack {
                                Text("Ahmad Albab").foregroundColor(.white).bold().font(.custom("Avenier", size: 25))
                                Text("017-9998 881").foregroundColor(.white).font(.custom("Avenier", size: 20))
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
                    
                    Text("Dengar kata kucing Kak Ton hilang, rantai leher nama 'Bujibu'...").frame(width: 379)
                    
                    HStack {
                        Spacer().frame(width: 15)
                        Text("Title").bold()
                        
                        Spacer()
                        Text("Kucing Kak Ton Hilang!!!").frame(height: 15)
                        
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
                    
                    
                    HStack() {
                        Spacer().frame(width: 13)
                        Text("Kak Ton pergi ke pasar, dia terlupa nak tutup pintu sangkar Bujibu, Kak Ton balik je rumah Bujibu dah tiada dalam sangkar, sesiapa terjumpa Bujibu tolong hantar ke rumah Kak Ton.")
                         
                            
                    }.padding(EdgeInsets(top: 10, leading: 1, bottom: 10, trailing: 10))
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
            ShowInfoView()
        }
    }
}
