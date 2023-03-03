//
//  utilities.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

struct utilities: View {
    var body: some View {
        
        NavigationStack {
            VStack {
                ZStack(alignment: .bottom){
                            maincolor
                            VStack{
                                
                                Text("Utilities")
                                    .bold()
                                    .font(.title)
                                    .padding(20)
                                
                                
                                
                            }
                }.frame(height: 150).ignoresSafeArea()
                List{
                    ServiceRow(name: "Ahmad Zamri",exp: "25",workType: "Plumber")
                    ServiceRow(name: "Ahmad Zamri",exp: "10",workType: "Mechanic")
                    ServiceRow(name: "Ahmad Zamri",exp: "12",workType: "Electrician")
                                        
                }.listStyle(PlainListStyle())
            }
        }
        
                
                
                
            
            
        }
        
    }


struct utilities_Previews: PreviewProvider {
    static var previews: some View {
        utilities()
    }
}
