//
//  SOS_CallAll.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

struct SOS_CallAll: View {
    var body: some View {
        VStack {
            Image(systemName: "figure.water.fitness")
                .font(.system(size: 100, weight: .light))
            Text("Tolong! Tolong!")
                .font(.custom("Avenir", size: 15))
        }
        }
}

struct SOS_CallAll_Previews: PreviewProvider {
    static var previews: some View {
        SOS_CallAll()
    }
}
