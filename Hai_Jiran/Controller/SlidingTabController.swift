//
//  Tab.swift
//  Hai_Jiran
//
//  Created by stdc user on 27/02/2023.
//

import SwiftUI

struct Tab {
    var icon: Image?
    var title: String
}

struct SlidingTabs: View {
    var fixed = true
    var tabs: [Tab]
    var geoWidth: CGFloat
    @Binding var selectedTab: Int
    var body: some View {
        VStack() {
            HStack(spacing: 0) {
                ForEach(0 ..< tabs.count, id: \.self) { row in
                    Button(action: {
                        withAnimation {
                            selectedTab = row
                        }
                    }, label: {
                        VStack(spacing: 0) {
                            HStack {
                                
                                // Text
                                Text(tabs[row].title)
                                    .font(Font.system(size: 12, weight: .semibold))
                                    .foregroundColor(Color("mainColorTheme"))
                                    .padding(EdgeInsets(top: 10, leading: 3, bottom: 10, trailing: 0))
                                // Image
                                AnyView(tabs[row].icon)
                                    .foregroundColor(Color("mainColorTheme"))
                                    .padding(EdgeInsets(top: 0, leading: 5, bottom: 0, trailing: 0))
                            }
                            .frame(width: fixed ? (geoWidth / CGFloat(tabs.count)) : .none, height: 42)
                            // Bar Indicator
                            Rectangle().fill(selectedTab == row ? Color("mainColorTheme") : Color.gray.opacity(0.3))
                                .frame(height: 3)
                        }.fixedSize()
                    })
                        .accentColor(Color("mainColorTheme"))
                        .buttonStyle(PlainButtonStyle())
                }
            }
        }
        .frame(height: 45)
        .onAppear(perform: {
            UIScrollView.appearance().backgroundColor = UIColor(Color.white)
            UIScrollView.appearance().bounces = false
        })
        .onDisappear(perform: {
            UIScrollView.appearance().bounces = true
        })

    }
}

struct SlidigTabView_Previews: PreviewProvider {
    let tabs : [Tab] = [
        .init(icon: Image(systemName: "globe"), title: "Whats New?"),
        .init(icon: Image(systemName: "globe"),title: "My Info"),
        .init(icon: Image(systemName: "globe"),title: "Completed")
    ]
    @State private var selectedTab: Int = 0
    
    static var previews: some View {
        HomeView()
    }
}
