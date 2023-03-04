//
//  UtilitieRow.swift
//  Hai_Jiran
//
//  Created by stdc user on 03/03/2023.
//

import SwiftUI

struct ServiceRow: View {
    
    var name:String
    var exp: String
    var workType: String
    
    var body: some View {
        
        ZStack(alignment: .leading){
            VStack{
                Spacer().frame(height: 10)
            
                
                HStack {
                    
                    VStack {
                        
                        HStack {
                            
                            Spacer().frame(width: 10)
                            
                            
                            Text(name)
                                .font(.system(size: 20,weight: .bold))
                                .lineLimit(2)
                                .foregroundColor(Color(.white))
                                .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                                .background(Color("mainColorTheme"))
                            .cornerRadius(15)
                            Spacer(minLength: 0)
                            
                            
                            VStack {
                                Spacer(minLength: 50)
                                HStack{
                                    Text(workType)
                                        .font(.system(size: 25))
                                        .foregroundColor(.gray)
                                    Spacer().frame(width: 10)
                                    
                                    Image("chat_preview_icon").resizable().frame(width: 40, height: 40)
                                }
                            }
                        }
                    }
                }
                Spacer(minLength: 0)
                
                    Text(exp + " Years")
                        .font(.system(size: 20,weight: .regular))
                        .lineLimit(2)
                        .foregroundColor(Color(.black))
                        .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 5))
                    Spacer(minLength: 20)
                    
                    
                    
                
                Spacer(minLength: 0)
                
            }
        }.frame(height: 90)
    }
}

struct CompletedChatRow1_Previews: PreviewProvider {
    static var previews: some View {
        ServiceRow(name: "Ahmad Albab",exp:"10",workType: "Plumber")
    }
}
