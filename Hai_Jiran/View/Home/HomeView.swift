//
//  HomepageView.swift
//  Hai_Jiran
//
//  Created by stdc user on 28/02/2023.
//

import SwiftUI

struct HomeView : View{
    @State private var selectedTab: Int = 0
    @EnvironmentObject var User : UserData
    @State var changeTab = true
    let tabs : [Tab] = [
        .init(icon: Image(systemName: "globe"), title: "Whats New?"),
        .init(icon: Image(systemName: "globe"),title: "My Info"),
        .init(icon: Image(systemName: "globe"),title: "Completed")
    ]
    
    var body: some View{
        NavigationStack {
            ZStack {
                VStack(){
                    ZStack{
                        Color("mainColorTheme")
                        HStack(spacing:15){
                            Spacer(minLength: 0)
                            VStack {
                                Button(action: {}){
                                    Image(systemName: "rectangle.portrait.and.arrow.right")
                                        .font(.system(size: 22))
                                        .foregroundColor(.white)
                                }.padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 30))
                                Spacer()
                                NavigationLink(
                                    destination: UpdateProfileView()) {
                                    ZStack {
                                        Rectangle()
                                            .frame(width:30, height: 30)
                                            .cornerRadius(4)
                                            .foregroundColor(Color("thirdColorTheme"))
                                        Image(systemName: "square.and.pencil")
                                            .font(.system(size: 20))
                                            .foregroundColor(.white)
                                    }.padding(EdgeInsets(top: 0, leading: 0, bottom: 20, trailing: 15))
                                }
                            }
                        }
                        VStack{
                            Spacer().frame(height: 30)
                            CircleImage()
                            Spacer().frame(height: 20)
                            Text("Hi " + User.UserList[0].profileName).foregroundColor(.white).font(.custom("Avenier", size: 25))
                        }
                    }.edgesIgnoringSafeArea(.top)
                        .frame(height: 190)
                    Spacer(minLength: 0)
                    NavigationStack{
                        GeometryReader{
                            geo in
                            VStack(spacing:0){
                                //tabs
                                SlidingTabs(tabs: tabs, geoWidth: geo.size.width, selectedTab: $selectedTab)
                                //Views
                                switch selectedTab {
                                case 0:
                                    AnyView(NewInfoListView())
                                case 1:
                                    AnyView(MyInfoListView())
                                case 2:
                                    AnyView(CompletedInfoListView())
                                default:
                                    AnyView(Text("s"))
                                }
                                
                                /*TabView(selection: $selectedTab,
                                 content: {
                                 NewInfoListView().tag(0)
                                 MyInfoListView().tag(1)
                                 CompletedInfoListView().tag(2)
                                 }).tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                                 .disabled(true)*/
                            }.animation(.linear, value: changeTab)
                        }
                    }
                }
                AddInfoButton()
            }
        }.accentColor(.black)
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

