//
//  Hailing.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

struct hailing: View {
    var body: some View {
        VStack {
            ZStack(alignment: .bottom){
                Color("mainColorTheme")
                        VStack{
                            
                            Text("Hailing")
                                .bold()
                                .font(.title)
                                .padding(20)
                            
                            
                            
                        }
            }.frame(height: 150).ignoresSafeArea()
            List{
                ServiceRow(name: "Ahmad Albab",exp: "10",workType: "Driver")
                ServiceRow(name: "Ahmad Zamri",exp: "33",workType: "Driver")
                ServiceRow(name: "Mael Lambong",exp: "24",workType: "Driver")
                
                
            }.listStyle(PlainListStyle())
        }
    }
}

struct hailing_Previews: PreviewProvider {
    static var previews: some View {
        hailing()
    }
}
