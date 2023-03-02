//
//  AddInfoButton.swift
//  Hai_Jiran
//
//  Created by stdc user on 01/03/2023.
//

import SwiftUI

struct AddInfoButton: View {
    var body: some View {
        HStack {
            Spacer()
            VStack {
                Spacer()
                Circle().foregroundColor(Color(0x5bd4a4)).overlay(
                    NavigationLink(destination: MapView()) {
                        Text("+")
                            .font(.system(.largeTitle))
                            .frame(width: 45, height: 40)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 4)
                    }
                ).frame(height: 50)
                
            }
        }.padding(30)
    }
}
