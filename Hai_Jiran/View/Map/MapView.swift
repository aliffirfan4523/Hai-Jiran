//
//  MapView.swift
//  Hai_Jiran
//
//  Created by stdc user on 01/03/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude:3.0757060910357494, longitude:101.49446084575956), span: MKCoordinateSpan(latitudeDelta: 0.001, longitudeDelta: 0.001))
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack{
                    Color("mainColorTheme")
                    HStack(spacing:0){
                        Spacer(minLength: 0)
                        VStack {
                            Button(action: {}){
                                Image(systemName: "rectangle.portrait.and.arrow.right")
                                    .font(.system(size: 22))
                                    .foregroundColor(.white)
                            }.padding(EdgeInsets(top: 30, leading: 0, bottom: 0, trailing: 30))
                            Spacer()
                        }
                    }
                    VStack{
                        
                        Spacer().frame(height: 60)
                        Text("maps of community").foregroundColor(.white).font(.custom("Avenier", size: 30)).frame(maxWidth: .infinity)
                    }
                }.ignoresSafeArea()
                    .frame(height: 100)
                ScrollView{
                    
                    ZStack {
                        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
                            .padding(.top, 0.0)
                            .frame(width: 400, height: 200)
                        Rectangle()
                                        .stroke(Color.green, lineWidth: 4)
                                        .frame(width: 400, height: 200)
                                        .opacity(0.5)
                                        .cornerRadius(0.7)
                                        
                                }
                    
                    Text("Perumahan Taman Melawati").bold().underline()
                    AboutResidentView(teamMembers: UserModel().UserList).ignoresSafeArea()
                    Spacer()
                }
            }

        }
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}

