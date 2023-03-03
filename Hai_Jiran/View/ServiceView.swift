//
//  ServicesView.swift
//  Hai_Jiran
//
//  Created by stdc user on 01/03/2023.
//

import SwiftUI

struct ServicesView: View {
    
    var body: some View {
        ZStack{
            
            VStack{
                
                Spacer(minLength: 120)
                Label("Utilities", systemImage: "gear.circle")
                    .frame(width:150,height:80)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(10)
//                NavigationLink(""){                    
//                }
                
                Label("Hailing", systemImage: "car.fill")
                    .frame(width:150,height:80)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(10)
                Spacer(minLength: 20)
                Label("Request ?", systemImage: "message.fill")
                Spacer(minLength: 30)
            }.navigationTitle("Services")
            
            VStack {
                ZStack {maincolor
                    
                    VStack{
                        
                        Spacer(minLength: 100)
                        Text("Services")
                            .bold()
                            .font(.title)
                            .padding(30)
                    }
                }.edgesIgnoringSafeArea(.top)
                    .frame(height: 90)
                Spacer(minLength: 0)
            }
            
        }
    }
}

struct ServicesView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesView()
    }
}
