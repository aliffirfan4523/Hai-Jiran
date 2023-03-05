//
//  UpdateProfileView.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI


struct UpdateProfileView: View {
    @Environment(\.presentationMode) var presentationMode
    

    @State var fullname:String =  ""
    @State var profileName:String = ""
    @State var Age:String = ""
    @State var mobileNumber:String = ""
    @State var currentJob:String = ""
    @State var fullAddress:String = ""
    
    @EnvironmentObject var User : UserData
    var body: some View {
        VStack {
            Spacer().frame(height: 20)
            CircleImage()
            Text("Your Profiles:").font(.system(size: 25))
            HStack{
                Text("Full Name: ")
                Spacer()
                TextField(User.UserList[0].fullName, text: $fullname)
                    .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("mainColorTheme"), lineWidth: 2)
                        )
            }
            HStack{
                Text("Profile Name:")
                Spacer()
                TextField(User.UserList[0].profileName, text: $profileName)
                    .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("mainColorTheme"), lineWidth: 2)
                        )
            }
            HStack{
                Text("Age:")
                Spacer()
                TextField(User.UserList[0].userAge, text: $Age)
                    .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("mainColorTheme"), lineWidth: 2)
                        )
            }
            HStack{
                Text("Mobile Number:")
                Spacer()
                TextField(User.UserList[0].mobileNum, text:  $mobileNumber)
                    .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("mainColorTheme"), lineWidth: 2)
                        )
            }
            HStack{
                Text("Current Job:")
                Spacer()
                TextField(User.UserList[0].currentJob, text:  $currentJob)
                    .padding(4)
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("mainColorTheme"), lineWidth: 2)
                        )
            }
            HStack{
                Text("Full Address:")
                Spacer()
                TextEditor(text:  $fullAddress)
                    .foregroundColor(.secondary)
                    .padding(.horizontal)
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("mainColorTheme"), lineWidth: 2)
                    )
                    .frame(height: 80)
            }
            HStack(){
                Button("Clear"){
                    clear()
                }
                    .frame(width: 50)
                    .padding(8)
                    .background(Color("mainColorTheme"))
                    .cornerRadius(16)
                Spacer()
                Button("Confirm"){
                    confirm()
                }
                    .frame(width: 70)
                    .padding(8)
                    .background(Color("mainColorTheme"))
                    .cornerRadius(16)
            }.padding()
            
            
        }.padding()
        
    }
    
    func confirm(){
        User.UserList[0].fullName = self.fullname
        User.UserList[0].profileName = self.profileName
        User.UserList[0].userAge = self.Age
        User.UserList[0].mobileNum = self.mobileNumber
        User.UserList[0].currentJob = self.currentJob
        User.UserList[0].fullAddress = self.fullAddress
        presentationMode.wrappedValue.dismiss()
    }
    
    func clear(){
        fullname = ""
        profileName = ""
        Age = ""
        mobileNumber = ""
        currentJob = ""
        fullAddress = ""
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
            fullAddress: ""
        )
    }
}
