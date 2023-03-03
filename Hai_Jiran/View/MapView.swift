//
//  MapView.swift
//  Hai_Jiran
//
//  Created by stdc user on 01/03/2023.
//

import SwiftUI
import MapKit

struct MapComView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    
    var body: some View {
        VStack {
            ZStack{
               Color(0x5bd4a4)
                HStack(spacing:15){
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
                                Spacer()
            List{
                MapProfileRow(name: "Razak Sensei", details: "")
                MapProfileRow(name: "Zabedah Manap", details: "")
                MapProfileRow(name: "Alif Berating", details: "")
                MapProfileRow(name: "Salim Gorgon", details: "")
                MapProfileRow(name: "Nazim Ilyas", details: "")
                MapProfileRow(name: "Ahmad Zubair", details: "")
                MapProfileRow(name: "Lim Kok Wing", details: "")
                MapProfileRow(name: "Michelle Munira", details: "")
                MapProfileRow(name: "Subramaniam ", details: "")
                MapProfileRow(name: "Raju Rastogi", details: "")
                
               
            }.listStyle(PlainListStyle())
            
            
            
        }
        
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapComView()
    }
}

struct MapProfileRow: View {
    var name:String
    var details:String
    
    var body: some View {
        ZStack(alignment: .leading){
            VStack{
                Spacer().frame(height: 10)
                ZStack {
                    HStack {
                        CircleImage(width: 150 , height: 90)
                        Spacer().frame(width: 10)
                        Text(name)
                            .font(.system(size: 23,weight: .regular))
                            .foregroundColor(Color(.black))
                            .padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15))
                        Spacer(minLength: 0)
                        Spacer().frame(width: 10)
                    }
                    Spacer(minLength: 0)
                    HStack {
                        Text(details)
                            .font(.system(size: 12,weight: .regular))
                            .lineLimit(2)
                            .foregroundColor(Color(.black))
                            .padding(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                        Spacer(minLength: 0)
                        Image("chat_preview_icon").resizable().frame(width: 40, height: 40)
                    }
                    Spacer(minLength: 0)
                    
                }
            }.frame(height: 90)
        }
    }
}
