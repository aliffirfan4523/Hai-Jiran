// 🔥BOYCOTT on russia - terrorist must be punished!
// «Русский военный корабль, иди на хуй!» (c) Ukrainian Frontier Guard
//
// ATTENTION: This is a demo - use it as you wish. Reference is appriciated.
// If you want to thank - buy me coffee: https://secure.wayforpay.com/donate/asperi

import SwiftUI

struct Item {
    let title: String
    let color: Color
    let icon: String
    var items: SelectionPage
}

struct SelectionPage:View {
    var selectedPage:Int?
    var body: some View{
        switch selectedPage {
            case 1 : HomeView()
            case 2 : MapComView()
        case 3 : ServicesView()
        default : Text("Under Construction🥲").frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
}

