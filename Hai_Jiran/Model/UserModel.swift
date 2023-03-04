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



class PenggunaModel : Identifiable{

    var id = UUID()
    var email:String = ""
    var password:String = ""
    var fullName:String = ""
    var profileName:String = ""
    var Age:String = ""
    var mobileNum:String = ""
    var currentJob:String = ""
    var fullAddress:String = ""
    
    init(email: String, password: String, fullName: String, profileName: String, Age: String, mobileNum: String, currentJob: String, fullAddress: String) {
        self.email = email
        self.password = password
        self.fullName = fullName
        self.profileName = profileName
        self.Age = Age
        self.mobileNum = mobileNum
        self.currentJob = currentJob
        self.fullAddress = fullAddress
    }
}


var currentUser = UserList[0]

var UserList = [
    PenggunaModel(email: "test", password: "123", fullName: "Ahmad Albab", profileName: "Ahmad Albab", Age: "20", mobileNum: "0183330292", currentJob: "Seller", fullAddress: "no,3, lorong guguja"),
    PenggunaModel(email: "test", password: "123", fullName: "Ahmad Albab", profileName: "Ahmad Albab", Age: "20", mobileNum: "0183330292", currentJob: "Seller", fullAddress: "no,3, lorong guguja"),
    PenggunaModel(email: "test", password: "123", fullName: "Ahmad Albab", profileName: "Ahmad Albab", Age: "20", mobileNum: "0183330292", currentJob: "Seller", fullAddress: "no,3, lorong guguja"),
    PenggunaModel(email: "test", password: "123", fullName: "Ahmad Albab", profileName: "Ahmad Albab", Age: "20", mobileNum: "0183330292", currentJob: "Seller", fullAddress: "no,3, lorong guguja"),
]

class Info : Identifiable {
    var id = UUID()
    var name: String
    var details: String
    var picture: UIImage
    var title: String
    var date: Date
    var description: String
    var contactNum: String
    var personName: String
    
    init(name: String, details: String, picture: UIImage, title: String, date: Date, description: String, contactNum: String, personName: String) {
        self.name = name
        self.details = details
        self.picture = picture
        self.title = title
        self.date = date
        self.description = description
        self.contactNum = contactNum
        self.personName = personName
    }
}

 var infos = [
    Info(name: "Ahmaaad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam", picture: UIImage(), title: "", date: Date.now, description: "", contactNum: "", personName: ""),
]

struct HomesView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

var items = [
    Item(title: "Map", color: .red, icon: "map", items: SelectionPage(selectedPage: 2)),
    Item(title: "house", color: .white, icon: "house", items: SelectionPage(selectedPage: 1)),
    Item(title: "Service", color: .green, icon: "gearshape.2", items: SelectionPage(selectedPage: 3)),
]
