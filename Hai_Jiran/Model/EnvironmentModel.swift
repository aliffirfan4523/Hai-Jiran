//
//  EnvironmentObject.swift
//  Hai_Jiran
//
//  Created by stdc user on 05/03/2023.
//

import Foundation
import SwiftUI

class UserModel: ObservableObject {
    
    
    
    @Published var UserList: [PenggunaModel] = [
        PenggunaModel(
            email: "test",
            password: "123",
            fullName: "Ahmad Albab",
            profileName: "ahmad albab",
            Age: "20",
            mobileNum: "012345678",
            currentJob: "programmer",
            fullAddress: "jalan binjai",
            image:  (UIImage(named: "ahmadalbab"))!
        )
    ]
 
    @Published var newInfos = [
       Info(
        name: "Ahmad Naufal",
        details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam",
        image: (UIImage(named: "eksiden"))!,
        title: "",
        date: Date(),
        description: "",
        contactNum: "",
        personName: ""),
       Info(
        name: "Danish",
        details: "Kucing saya hilang semalam",
        image: (UIImage(named: "eksiden"))!,
        title: "Kucing Hilang",
        date: Date(),
        description: "Kucing saya hilang semalam, warna kucing saya oren putih. Harap sesiapa yang ternampak telefon saya",
        contactNum: "01223218667",
        personName: "danish"),
       Info(
        name: "Kamal Arifin",
        details: "Gerai kopi baru",
        image: (UIImage(named: "eksiden"))!,
        title: "Gerai kopi baru",
        date: Date(),
        description: "Gerai kopi baru",
        contactNum: "01255423512",
        personName: "Kamal Arifin"),
       Info(
        name: "Syahir Kunafa",
        details: "Sesiapa yang kehilangan telefon boleh hubungi saya, jenama telefon tidak diketahui, kamera segi empat",
        image: (UIImage(named: "eksiden"))!,
        title: "Telefon yang dijumpai",
        date: Date(),
        description: "Saya terjumpa di depan gerai nasi lemak pak ahmad, kalau mahu mengambil telefon ini, sila hubungi saya atau boleh mesej guna whatsapp",
        contactNum: "012821318523",
        personName: "Syahir"),
       Info(
        name: "Ahmad Albab",
        details: "Majlis kahwin",
        image: (UIImage(named: "eksiden"))!,
        title: "Saya membuat majlis perkahwinan anak saya di depan rumah saya",
        date: Date(),
        description: "Saya menjemput kejiranan untuk menghadiri majlis perkahwinan anak saya",
        contactNum: "01255423512",
        personName: "Kamal Arifin"),
    ]

    @Published var myInfos = [
        Info(
         name: "Ahmad Albab",
         details: "Majlis kahwin",
         image: (UIImage(named: "eksiden"))!,
         title: "Saya membuat majlis perkahwinan anak saya di depan rumah saya",
         date: Date(),
         description: "Saya menjemput kejiranan untuk menghadiri majlis perkahwinan anak saya",
         contactNum: "01255423512",
         personName: "Kamal Arifin"),
    ]

    @Published var completedInfos = [
        Info(
         name: "Ahmaaad Naufal",
         details: "Saya ada info dari jiran sebelah, anak kucing mereka kena langgar dengan kerbau pak jamal semalam",
         image: UIImage(),
         title: "",
         date: Date(),
         description: "",
         contactNum: "",
         personName: ""),
    ]
    
    func share() {
        let text = "Check out my app!"
        let url = URL(string: "https://chat.openai.com/")!
        
        let activityViewController = UIActivityViewController(activityItems: [text, url], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityViewController, animated: true, completion: nil)
        
        if let popoverController = activityViewController.popoverPresentationController {
                popoverController.sourceView = UIApplication.shared.windows.first
                popoverController.sourceRect = CGRect(x: UIScreen.main.bounds.midX, y: UIScreen.main.bounds.midY, width: 0, height: 0)
                popoverController.permittedArrowDirections = []
            }
    }
}
