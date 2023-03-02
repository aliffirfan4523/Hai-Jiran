//
//  tester.swift
//  Hai_Jiran
//
//  Created by stdc user on 01/03/2023.
//

import SwiftUI

struct tester: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor.red
    }
    var body: some View {
        TabView{
            Text("Hello, 1!")
                .tabItem{
                    Image(systemName: "globe")
                }
            Text("Hello, 2")
                .tabItem{
                    Image(systemName: "globe")
                }
            Text("Page 3")
                .tabItem{
                    Image(systemName: "globe")
                }
            Text("World 4")
                .tabItem{
                    Image(systemName: "globe")
                }
        }
    }
}

struct tester_Previews: PreviewProvider {
    static var previews: some View {
        tester()
    }
}
