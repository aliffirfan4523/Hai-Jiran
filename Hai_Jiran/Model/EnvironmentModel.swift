//
//  EnvironmentObject.swift
//  Hai_Jiran
//
//  Created by stdc user on 05/03/2023.
//

import Foundation
import SwiftUI

class UserModel: ObservableObject {
    @Published var UserList: PenggunaModel =
        PenggunaModel(
            email: "test",
            password: "123",
            fullName: "Ahmad Albab",
            profileName: "ahmad albab",
            Age: "20",
            mobileNum: "012345678",
            currentJob: "programmer",
            fullAddress: "jalan binjai",
            image: UIImage())
    
 
    @Published var newInfos = [
       Info(
        name: "Ahmaaad Naufal",
        details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam",
        image: UIImage(),
        title: "",
        date: Date.now,
        description: "",
        contactNum: "",
        personName: ""),
    ]

    @Published var myInfos = [
        Info(
         name: "Ahmaaad Naufal",
         details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam",
         image: UIImage(),
         title: "",
         date: Date.now,
         description: "",
         contactNum: "",
         personName: ""),
    ]

    @Published var completedInfos = [
        Info(
         name: "Ahmaaad Naufal",
         details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam",
         image: UIImage(),
         title: "",
         date: Date.now,
         description: "",
         contactNum: "",
         personName: ""),
    ]
    
    func share() {
        let text = "Check out my app!"
        let url = URL(string: "https://chat.openai.com/")!
        let activityViewController = UIActivityViewController(activityItems: [text, url], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityViewController, animated: true, completion: nil)
    }
}
