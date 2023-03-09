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
            fullName: "Aliff Irfan",
            profileName: "Aliff Irfan",
            Age: "20",
            mobileNum: "012345678",
            currentJob: "programmer",
            fullAddress: "jalan melawati",
            image:  (UIImage(named: "aliffirfan"))!,
            about: "Jika ku bukan yang terbaik buatmu, ku harap kamu jumpa yang dapat membuatkan kamu bahagia"
        ),
            PenggunaModel(
                email: "test",
                password: "123",
                fullName: "TouFix",
                profileName: "TouFix",
                Age: "25",
                mobileNum: "60125819575",
                currentJob: "Library Of Tun Uda Manager",
                fullAddress: "no.40, lorong melawati",
                image: UIImage(named: "toufix")!,
                about: "Would like to greeting you all to come or stop-by at my house. Don't forget to bring any potluck that we can share-it, we sit, and we enjoy to last bit."
            ),
            PenggunaModel(
                email: "test",
                password: "123",
                fullName: "Hariz",
                profileName: "Hariz",
                Age: "22",
                mobileNum: "60117504345",
                currentJob: "Mechanic",
                fullAddress: "no.24, lorong melawati",
                image: UIImage(named: "hariz")!,
                about: "We are normally feed in the morning and evening and spend most of the day resting under cover along the banks."
            ),
            PenggunaModel(
                email: "test",
                password: "123",
                fullName: "Danish",
                profileName: "Danish",
                Age: "30",
                mobileNum: "60183818725",
                currentJob: "Driver",
                fullAddress: "no.14, lorong melawati",
                image: UIImage(named: "danish")!,
                about: "Duckling is a baby duck. We usually learn to swim by following our mother to a body of water."
            ),
            PenggunaModel(
                email: "test",
                password: "123",
                fullName: "Muaz",
                profileName: "Muaz",
                Age: "28",
                mobileNum: "60183545796",
                currentJob: "Driver",
                fullAddress: "no.10, lorong melawati",
                image: UIImage(named: "muaz")!,
                about: "Tokey udang geragau nombor satu di Malaysia."
            )
    ]
 
    @Published var newInfos = [
       Info(
        name: "Ahmad Naufal",
        details: "Saya ada info dari jiran sebelah, van jiran saya kena langgar dengan kereta myvi depan kedai jiran saya semalam",
        image: (UIImage(named: "eksiden"))!,
        title: "Eksiden kereta ",
        date: Date(),
        description: "jiran kata kejadian berlaku pagi tadi, tapi saya pelik kenapa myvi yang langgar tu boleh duduk atas van jiran saya",
        contactNum: "01212322212",
        personName: "Ahmad Naufal"),
       Info(
        name: "Danish",
        details: "Kucing saya hilang semalam",
        image: (UIImage(named: "kucingdanish"))!,
        title: "Kucing Hilang",
        date: Date(),
        description: "Kucing saya hilang semalam, warna kucing saya oren putih. Harap sesiapa yang ternampak telefon saya",
        contactNum: "01223218667",
        personName: "danish"),
       Info(
        name: "Kamal Arifin",
        details: "Gerai kopi baru",
        image: (UIImage(named: "geraikopi"))!,
        title: "Gerai kopi baru",
        date: Date(),
        description: "Gerai kopi baru",
        contactNum: "01255423512",
        personName: "Kamal Arifin"),
       Info(
        name: "Syahir Kunafa",
        details: "Sesiapa yang kehilangan telefon boleh hubungi saya, jenama telefon tidak diketahui, kamera segi empat",
        image: (UIImage(named: "telefonhilang"))!,
        title: "Telefon yang dijumpai",
        date: Date(),
        description: "Saya terjumpa di depan gerai nasi lemak pak ahmad, kalau mahu mengambil telefon ini, sila hubungi saya atau boleh mesej guna whatsapp",
        contactNum: "012821318523",
        personName: "Syahir"),
       Info(
        name: "Ahmad Albab",
        details: "Majlis kahwin",
        image: (UIImage(named: "kadkahwin"))!,
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
