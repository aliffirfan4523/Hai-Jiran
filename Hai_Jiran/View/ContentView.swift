//
//  ContentView.swift
//  Hai_Jiran
//
//  Created by stdc user on 27/02/2023.
//

import SwiftUI
import UIKit


struct ContentView: View {
    @StateObject var userData = UserModel()
    
    @State private var selection: String = "house"
    @State private var tbHeight = CGFloat.zero
    @State var barItems = [
        Item(title: "Home", color: .white, icon: "house", items: SelectionPage(selectedPage: 1)),
        Item(title: "Map", color: .red, icon: "map", items: SelectionPage(selectedPage: 2)),
        Item(title: "Service", color: .green, icon: "gearshape.2", items: SelectionPage(selectedPage: 3)),
        Item(title: "SOS", color: .red, icon: "sos.circle", items: SelectionPage(selectedPage: 4)),
    ]
    
    var selected: Item {
        barItems.first { $0.title == selection } ?? barItems[0]
    }
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color.gray.opacity(0.2))
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("mainColorTheme"))
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selection) {
                ForEach(barItems, id: \.title) { item in
                    TabContent(height: $tbHeight) {
                        item.items
                    }.tabItem {
                        Image(systemName: item.icon)
                        Text(item.title)
                        
                    }
                }
            }
        }
        .environmentObject(UserModel())
        .ignoresSafeArea(.keyboard, edges: .bottom)
            
    }
    
    
    struct TabContent<V: View>: View {
        @Binding var height: CGFloat
        @ViewBuilder var content: () -> V
        var body: some View {
            
            GeometryReader { gp in
                content()
                    .onAppear {
                        height = gp.safeAreaInsets.bottom
                    }
            }
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView().environmentObject(UserModel())
        }
    }
}
