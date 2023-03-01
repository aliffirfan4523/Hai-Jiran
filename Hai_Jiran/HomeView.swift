//
//  HomepageView.swift
//  Hai_Jiran
//
//  Created by stdc user on 28/02/2023.
//

import SwiftUI

struct HomeView : View{
    @State private var selectedTab: Int = 0
    let tabs : [Tab] = [
        .init(title: "Whats New?"),
        .init(title: "My Info"),
        .init(title: "Completed")
    ]
    init() {
            let appearance = UINavigationBarAppearance()
            appearance.configureWithOpaqueBackground()
            appearance.backgroundColor = UIColor(#colorLiteral(red: 0.737254902, green: 0.1294117647, blue: 0.2941176471, alpha: 1))
            UINavigationBar.appearance().standardAppearance = appearance
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
            UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.blue]
            UINavigationBar.appearance().isTranslucent = true
        }
    
    var body: some View{
        VStack(){
            ZStack{
                Color(0x5bd4a4)
                HStack(spacing:15){
                    Spacer(minLength: 0)
                    VStack {
                        Button(action: {}){
                            Image(systemName: "house")
                                .font(.system(size: 22))
                                .foregroundColor(.white)
                        }.padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 30))
                        Spacer()
                        Button(action: {}){
                            Image(systemName: "house")
                                .font(.system(size: 22))
                                .foregroundColor(.white)
                        }.padding(EdgeInsets(top: 0, leading: 0, bottom: 30, trailing: 30))
                    }
                }
                VStack{
                    Spacer().frame(height: 20)
                    CircleImage()
                    Spacer().frame(height: 20)
                    Text("Hi Ahmad Albab")
                }
            }.edgesIgnoringSafeArea(.top)
                .frame(height: 190)
            Spacer(minLength: 0)
            NavigationView{
                GeometryReader{
                    geo in
                    VStack(spacing:0){
                        //tabs
                        SlidingTabs(tabs: tabs, geoWidth: geo.size.width, selectedTab: $selectedTab)
                        //Views
                        TabView(selection: $selectedTab,
                                content: {
                            NewInfoListView().tag(0)
                            MyInfoListView().tag(1)
                            CompletedInfoListView().tag(2)
                        }).tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                    }
                }
            }
        }
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
