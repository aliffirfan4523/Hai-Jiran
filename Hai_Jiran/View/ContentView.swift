//
//  ContentView.swift
//  Hai_Jiran
//
//  Created by stdc user on 27/02/2023.
//

import SwiftUI
import UIKit

struct ContentView: View {

    @State private var selection: String = "house"
    @State private var tbHeight = CGFloat.zero
    
    var selected: Item {
        items.first { $0.title == selection } ?? items[0]
    }
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color.gray.opacity(0.2))
        UITabBar.appearance().unselectedItemTintColor = UIColor(Color("mainColorTheme"))
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selection) {
                ForEach(items, id: \.title) { item in
                    TabContent(height: $tbHeight) {
                        item.items
                    }.tabItem {
                        Image(systemName: item.icon)
                        Text(item.title)
                    }
                    
                }
            }
            .onChange(of: selection) { title in
                let target = 1
                if var i = items.firstIndex(where: { $0.title == title }) {
                    if i > target {
                        i += 1
                    }
                    items.move(fromOffsets: IndexSet(integer: target), toOffset: i)
                }
            }
            
            
            SOS_Button()
        }
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
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

