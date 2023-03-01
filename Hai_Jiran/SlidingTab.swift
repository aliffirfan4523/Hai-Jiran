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
        ScrollView(.horizontal, showsIndicators: false) {
            ScrollViewReader { proxy in
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
                                        // Image
                                        AnyView(tabs[row].icon)
                                            .foregroundColor(Color(0x5bd4a4))
                                            .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 0))
                                        // Text
                                        Text(tabs[row].title)
                                            .font(Font.system(size: 15, weight: .semibold))
                                            .foregroundColor(Color(0x5bd4a4))
                                            .padding(EdgeInsets(top: 10, leading: 3, bottom: 10, trailing: 15))
                                    }
                                    .frame(width: fixed ? (geoWidth / CGFloat(tabs.count)) : .none, height: 42)
                                    // Bar Indicator
                                    Rectangle().fill(selectedTab == row ? Color(0x5bd4a4) : Color.clear)
                                        .frame(height: 3)
                                }.fixedSize()
                            })
                                .accentColor(Color(0x5bd4a4))
                                .buttonStyle(PlainButtonStyle())
                        }
                    }
                    .onChange(of: selectedTab) { target in
                        withAnimation {
                            proxy.scrollTo(target)
                        }
                    }
                }
            }
        }
        .frame(height: 45)
        .onAppear(perform: {
            UIScrollView.appearance().backgroundColor = UIColor(Color.white)
            UIScrollView.appearance().bounces = fixed ? false : true
        })
        .onDisappear(perform: {
            UIScrollView.appearance().bounces = true
        })

    }
}
