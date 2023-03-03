//
//  UpdateProfileView.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

var currentUser = UserList[0]

struct UpdateProfileView: View {
    
    @State var fullname:String = ""
    @State var profileName:String = ""
    @State var Age:String = ""
    @State var mobileNumber:String = ""
    @State var currentJob:String = ""
    @State var Address:String = ""
    var body: some View {
        VStack {
            Spacer().frame(height: 20)
            CircleImage()
            Text("Your Profiles:").font(.system(size: 25))
            HStack{
                Text("Full Name: ")
                Spacer()
                TextField(currentUser.fullName, text: $fullname)
                    .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(maincolor, lineWidth: 2)
                        )
            }
            HStack{
                Text("Profile Name:")
                Spacer()
                TextField(currentUser.profileName, text: $profileName)
                    .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(maincolor, lineWidth: 2)
                        )
            }
            HStack{
                Text("Age:")
                Spacer()
                TextField(currentUser.Age, text: $Age)
                    .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(maincolor, lineWidth: 2)
                        )
            }
            HStack{
                Text("Mobile Number:")
                Spacer()
                TextField(currentUser.mobileNum, text: $mobileNumber)
                    .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(maincolor, lineWidth: 2)
                        )
            }
            HStack{
                Text("Current Job:")
                Spacer()
                TextField(currentUser.currentJob, text: $currentJob)
                    .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(maincolor, lineWidth: 2)
                        )
            }
            HStack{
                Text("Full Address:")
                Spacer()
                TextEditor(text: $Address)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(maincolor, lineWidth: 2)
                    )
                    .frame(height: 80)
            }
            HStack(){
                Button("Clear"){
                    clear()
                }
                    .frame(width: 50)
                    .padding(8)
                    .background(maincolor)
                    .cornerRadius(16)
                Spacer()
                Button("Confirm"){
                    confirm()
                }
                    .frame(width: 70)
                    .padding(8)
                    .background(maincolor)
                    .cornerRadius(16)
            }.padding()
            
            
        }.padding()
        
    }
    
    func confirm(){
        currentUser.fullName = fullname
        currentUser.profileName = profileName
        currentUser.Age = Age
        currentUser.mobileNum = mobileNumber
        currentUser.currentJob = currentJob
        currentUser.fullAddress = Address
        clear()
    }
    
    func clear(){
        fullname = ""
        profileName = ""
        Age = ""
        mobileNumber = ""
        currentJob = ""
        Address = ""
    }
}

struct UpdateProfileView_Previews: PreviewProvider {
    static var previews: some View {
        UpdateProfileView(
            fullname: "",
            profileName: "",
            Age: "",
            mobileNumber: "",
            currentJob: "",
            Address: ""
        )
    }
}
