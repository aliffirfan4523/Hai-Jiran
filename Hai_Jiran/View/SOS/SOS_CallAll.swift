//
//  SOS_CallAll.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

struct SOS_CallAll: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        ZStack {
            Color("secondaryColorTheme")
            VStack {
                Spacer()
                Image(systemName: "figure.water.fitness")
                    .font(.system(size: 100, weight: .light))
                    .foregroundColor(Color("appTheme"))
                Text("Tolong! Tolong!")
                    .font(.custom("Avenir", size: 15))
                    .foregroundColor(Color("appTheme"))
                Spacer()
                Button("Dismiss") {
                            presentationMode.wrappedValue.dismiss()
                        }
                        .frame(maxWidth: 100, maxHeight: 50)
                        .background(Color("mainColorTheme"))
                        .foregroundColor(Color.white)
                        .padding(100)

                
            }
        }.ignoresSafeArea()
        }
}

struct SOS_CallAll_Previews: PreviewProvider {
    static var previews: some View {
        SOS_CallAll()
    }
}
