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
    @State private var selection = 0
    
    var body: some View {

        TabView (selection: $selection){
            
            HomeView()
            .tabItem {
                Image(systemName: "house")
                Text("Home")
            }.background(Color.white)
            .tag(0)
            VStack {
                Text("SOS")
                .font(.title)
            Button(action: {
                // Handle SOS button tap here
            }) {
                Text("SOS")
                    .frame(width: 80, height: 40)
                    .background(Color.red)
                    .cornerRadius(10)
                }
            }
            .tabItem {
                Image(systemName: "exclamationmark.triangle.fill")
                Text("SOS")
            }
            MapView()
            .tabItem {
                Image(systemName: "map")
                Text("Map")
            }
        }.accentColor(Color(0x5bd4a4))
    }
}


struct TabBarButton: View {
    
    var systemName: String
    
    var body: some View{
        Button(action: {
        }, label: {
            
            VStack(spacing: 8){
                
                Image(systemName)
                    .resizable()
                    //Since its asset image...
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width:28, height: 28)
            }
            .frame(maxWidth: .infinity)
        })
    }
}

struct HomeView : View{
    @State private var selectedTab: Int = 0
    let tabs : [Tab] = [
        .init(title: "Whats New?"),
        .init(title: "Whats New?"),
        .init(title: "Whats New?")
    ]
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
                .frame(height: 200)
            Spacer(minLength: 0)
            NavigationView{
                GeometryReader{
                    geo in
                    VStack(spacing:0){
                        //tabs
                        Tabs(tabs: tabs, geoWidth: geo.size.width, selectedTab: $selectedTab)
                        //Views
                        TabView(selection: $selectedTab,
                            content: {
                            MapView().tag(0)
                            HomeView().tag(1)
                            MapView().tag(2)
                        })
                    }
                }
            }
        }
        
    }
}

struct MapView : View{
    var body: some View{
        VStack {
            Image(systemName: "map")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("This is map page")
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
