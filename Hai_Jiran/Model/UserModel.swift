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



struct PenggunaModel : Identifiable, Hashable{
    var id = UUID()
    var email:String
    var password:String
    var fullName:String
    var profileName:String
    var Age:String
    var mobileNum:String
    var currentJob:String
    var fullAddress:String
    
}

var UserList = [
    PenggunaModel(email: "test", password: "123", fullName: "Ahmad Albab", profileName: "Ahmad Albab", Age: "20", mobileNum: "0183330292", currentJob: "Seller", fullAddress: "no,3, lorong guguja"),
    PenggunaModel(email: "test", password: "123", fullName: "Ahmad Albab", profileName: "Ahmad Albab", Age: "20", mobileNum: "0183330292", currentJob: "Seller", fullAddress: "no,3, lorong guguja"),
    PenggunaModel(email: "test", password: "123", fullName: "Ahmad Albab", profileName: "Ahmad Albab", Age: "20", mobileNum: "0183330292", currentJob: "Seller", fullAddress: "no,3, lorong guguja"),
    PenggunaModel(email: "test", password: "123", fullName: "Ahmad Albab", profileName: "Ahmad Albab", Age: "20", mobileNum: "0183330292", currentJob: "Seller", fullAddress: "no,3, lorong guguja"),
]

struct Info : Identifiable, Hashable{
    let id = UUID()
    var name:String
    var details:String
    var picture: String
    var title: String
    var date: Date
    var description:String
    var contactNum: String
    var personName: String
}

 var infos = [
    Info(name: "Ahmaaad Naufal", details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam", picture: "", title: "", date: Date.now, description: "", contactNum: "", personName: ""),
]

struct HomesView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

