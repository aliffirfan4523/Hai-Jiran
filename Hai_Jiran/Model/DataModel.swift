//
//  UserModel.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import Foundation
import SwiftUI

//import Foundation
//
//var userModel:[ChatRow] = []
//



struct PenggunaModel : Identifiable, Codable{

    var id = UUID()
    var email:String = ""
    var password:String = ""
    var fullName:String = ""
    var profileName:String = ""
    var userAge:String = ""
    var mobileNum:String = ""
    var currentJob:String = ""
    var fullAddress:String = ""
    
    init(email: String, password: String, fullName: String, profileName: String, Age: String, mobileNum: String, currentJob: String, fullAddress: String) {
        self.email = email
        self.password = password
        self.fullName = fullName
        self.profileName = profileName
        self.userAge = Age
        self.mobileNum = mobileNum
        self.currentJob = currentJob
        self.fullAddress = fullAddress
    }
    
}

var UserList = PenggunaModel(email: "test", password: "123", fullName: "Ahmad Albab", profileName: "ahmad albab", Age: "20", mobileNum: "012345678", currentJob: "programmer", fullAddress: "jalan binjai")





struct Infoo: Codable, Identifiable {
    var id = UUID()
    var name: String
    var details: String
}

struct Info: Codable, Identifiable {
    var id = UUID()
    var name: String
    var details: String
    var image: Data?
    var title: String
    var date: Date
    var description: String
    var contactNum: String
    var personName: String
    
    init(id: UUID = UUID() ,name: String, details: String, image: UIImage, title: String, date: Date, description: String, contactNum: String, personName: String) {
        self.id = id
        self.name = name
        self.details = details
        self.image = image.pngData()
        self.title = title
        self.date = date
        self.description = description
        self.contactNum = contactNum
        self.personName = personName
    }
}

extension Info{
    
}

extension UIImage {
    var data: Data? {
        if let data = self.jpegData(compressionQuality: 1.0) {
            return data
        } else {
            return nil
        }
    }
}

extension Data {
    var image: UIImage? {
        if let image = UIImage(data: self) {
            return image
        } else {
            return nil
        }
    }
}



struct HomesView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

var newInfos = [
   Info(name: "Ahmaaad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam", image: UIImage(), title: "", date: Date.now, description: "", contactNum: "", personName: ""),
]

var myInfos = [
   Info(name: "Ahmaaad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam", image: UIImage(), title: "", date: Date.now, description: "", contactNum: "", personName: ""),
]

var completedInfos = [
   Info(name: "Ahmaaad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam", image: UIImage(), title: "", date: Date.now, description: "", contactNum: "", personName: ""),
]


