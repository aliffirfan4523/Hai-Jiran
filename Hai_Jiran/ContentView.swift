//
//  ContentView.swift
//  Hai_Jiran
//
//  Created by stdc user on 27/02/2023.
//

import SwiftUI
import UIKit

let maincolor = Color(0x5bd4a4)
struct ContentView: View {

    @State private var selection: String = "house"
    @State private var tbHeight = CGFloat.zero

    @State var items = [
        Item(title: "Map", color: .red, icon: "map.circle", items: SelectionPage(selectedPage: 2)),
        Item(title: "house", color: .white, icon: "house", items: SelectionPage(selectedPage: 1)),
        Item(title: "Service", color: .green, icon: "gearshape.2", items: SelectionPage(selectedPage: 0)),
    ]
    
    var selected: Item {
        items.first { $0.title == selection } ?? items[0]
    }
    
    var body: some View {
        ZStack(alignment: .bottom) {
            TabView(selection: $selection) {
                ForEach(items, id: \.title) { item in
                    TabContent(height: $tbHeight) {
                        item.items
                    }.tabItem {
                        if selection != item.title {
                            Image(systemName: item.icon)
                                Text(item.title)
                        }
                    }
                    .toolbarColorScheme(.light, for: .tabBar)
                    
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
            
            
            SOSTab(height: tbHeight)
        }
    }
    
    struct SOSTab: View {
        let height: CGFloat
        
        var body: some View {
            VStack {
            }
            .ignoresSafeArea()
            .overlay(
                Rectangle().foregroundColor(Color(0xff6567))
                    .frame(width: 150,height: height)
                    .shadow(radius: 4)
                    .overlay(){
                        ZStack {
                            VStack{
                                Text("S.O.S").foregroundColor(.white).font(.system(size: 25))
                                Text("Click more \nthan 3 sec").foregroundColor(.white).font(.system(size: 15))
                            }
                        }
                    }
                    .cornerRadius(25)
                , alignment: .bottom)
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

