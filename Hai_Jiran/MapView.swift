//
//  MapView.swift
//  Hai_Jiran
//
//  Created by stdc user on 01/03/2023.
//

import SwiftUI
import MapKit

struct MapView: View {
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
                    
                    Spacer().frame(height: 10)
                    Text("Maps of community").foregroundColor(.white).font(.custom("Avenier", size: 30))
                }
            }.ignoresSafeArea()
                .frame(height: 100)

            Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
                        .frame(width: 350, height: 200)
            Text("Perumahan Jalan london")

            Text("\n\n\nMembers")
            Text("- Mael lambong")
            Text("- Mael lambong")
            Text("- Mael lambong")
            Text("- Mael lambong")
            Spacer()
        }
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
