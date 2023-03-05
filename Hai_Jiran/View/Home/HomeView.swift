//  HomepageView.swift
//  Hai_Jiran
//
//  Created by stdc user on 28/02/2023.
//

import SwiftUI

class HomeViewModel: ObservableObject {
    
    @Published var selectedTab: Int = 0
    
    @State var profileName = UserModel().UserList.profileName
    
    let tabs: [Tab] = [
        .init(icon: Image(systemName: "globe"), title: "Whats New?"),
        .init(icon: Image(systemName: "globe"),title: "My Info"),
        .init(icon: Image(systemName: "globe"),title: "Completed")
    ]
    
    func getSelectedTabView() -> AnyView {
        switch selectedTab {
        case 0:
            return AnyView(NewInfoListView())
        case 1:
            return AnyView(MyInfoListView())
        case 2:
            return AnyView(CompletedInfoListView())
        default:
            return AnyView(Text(""))
        }
    }
}

struct HomeView : View{
    @StateObject var viewModel = HomeViewModel()
    
    @StateObject var userData = UserModel()
    
    @EnvironmentObject var User : UserModel
    
    @State private var selectedTab: Int = 0
    
    
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
                            Text("Hi " + viewModel.profileName).foregroundColor(.white).font(.custom("Avenier", size: 25))
                        }.environmentObject(UserModel())
                    }.edgesIgnoringSafeArea(.top)
                        .frame(height: 190)
                    Spacer(minLength: 0)
                    NavigationStack{
                        GeometryReader{
                            geo in
                            VStack(spacing:0){
                                //tabs
                                SlidingTabs(tabs: viewModel.tabs, geoWidth: geo.size.width, selectedTab: $viewModel.selectedTab)
                                //Views
                                viewModel.getSelectedTabView()
                                
                                /*TabView(selection: $selectedTab,
                                 content: {
                                 NewInfoListView().tag(0)
                                 MyInfoListView().tag(1)
                                 CompletedInfoListView().tag(2)
                                 }).tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
                                 .disabled(true)*/
                            }.animation(.linear, value: true)
                        }
                    }
                }.environmentObject(User)
                AddInfoButton()
            }.environmentObject(User)
        }.accentColor(.black)
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
