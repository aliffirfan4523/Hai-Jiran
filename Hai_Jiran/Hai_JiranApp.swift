//
//  Hai_JiranApp.swift
//  Hai_Jiran
//
//  Created by stdc user on 27/02/2023.
//

import SwiftUI

@main
struct Hai_JiranApp: App {
    var body: some Scene {
        WindowGroup {
            SplashScreenView()
        }
    }
}

struct StartingPages: View {
    @StateObject var myData = UserModel()
    
    var body: some View {
        ContentView().environmentObject(myData)
    }
}
