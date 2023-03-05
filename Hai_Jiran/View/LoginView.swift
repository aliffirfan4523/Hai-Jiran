//
//  ContentView.swift
//  login page
//
//  Created by stdc user on 28/02/2023.
//

import SwiftUI

struct LoginView: View {
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            Image("")
                .resizable()
                .frame(width: 150, height: 150)
                .padding(.top, 50)
            HStack{
                VStack{
                    Text("Welcome to HaiJiran")
                        .font(.title)
                        .bold()
                        .padding(.top, 20)
                }
                .padding(.leading)
                Image(systemName: "triangle").fixedSize()
            }
            TextField("Email", text: $email)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5.0)
                .padding(.top, 20)
            SecureField("Password", text: $password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(5.0)
                .padding(.top, 10)
            Button(action: {
                // Login action
            }) {
                VStack {
                    Text("Lupa password ke?")
                        .padding(.top, 5)
                    Spacer()
                }
                .padding(.top, 20)
                
            }
            .padding(.horizontal, 30)
            Button(action: {}) {
                VStack {
                    Text("Log In")
                        .foregroundColor(.white)
                        .padding(1.0)
                        .frame(width: 220, height: 50)
                        .background(Color.blue)
                        .cornerRadius(5.0)
                }
                .padding(.top, 20)
                
            }
            .padding(.horizontal, 30)
            
        }
    }
    
    
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
