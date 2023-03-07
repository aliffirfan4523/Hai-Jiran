//
//  ServicesView.swift
//  Hai_Jiran
//
//  Created by stdc user on 01/03/2023.
//

import SwiftUI

struct ServicesView: View {
    
    var body: some View {
        NavigationStack {
            ZStack{
                
                VStack{
                    
                    Spacer(minLength: 120)
                    utilities(Resident: testData)
                    //NavigationLink(destination: utilities(Resident: testData)){
                      //  Label("Utilities", systemImage: "gear.circle")
                        //    .frame(width:150,height:80)
                          //  .foregroundColor(.black)
                            //.background(Color("mainColorTheme"))
                            //.cornerRadius(10)
                    //}
                    
                    Spacer(minLength: 30)
                    HStack{
                        Image(systemName: "message.fill")
                        Link("Request ?", destination: URL(string: "https://www.youtube.com")!)
                    }
                    Spacer(minLength: 70)
                        
                }
                
                VStack {
                    ZStack {Color("mainColorTheme")
                        
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
}

struct ServicesView_Previews: PreviewProvider {
    static var previews: some View {
        ServicesView()
    }
}
