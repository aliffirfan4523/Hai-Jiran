//
//  listOptionWhatsNew.swift
//  Hai_Jiran
//
//  Created by stdc user on 03/03/2023.
//

import SwiftUI

struct listOptionWhatsNew: View {
    var body: some View {
        ZStack (alignment: .leading) {
            Rectangle()
                .foregroundColor(.white)
                .opacity(0.05)
                .frame(width: .infinity, height: 90)
            HStack(spacing: 0){
                ZStack(alignment: .center){
                    Rectangle()
                        .foregroundColor(.yellow)
                        .frame(width: 55, height: 90)
                    VStack{
                        Image(systemName: "square.and.arrow.up")
                            .font(.system(size: 28))
                        Text("Share").bold()
                            .font(.custom("Avenir", size: 15))
                    }
                }
                ZStack(alignment: .center){
                    Rectangle()
                        .foregroundColor(.purple)
                        .frame(width: 55, height: 90)
                    VStack{
                        Image(systemName: "doc.text.magnifyingglass")
                            .font(.system(size: 30))
                        Text("View").bold()
                            .font(.custom("Avenir", size: 15))
                    }
                }
            }.foregroundColor(.white)
        }
    }
}

struct listOptionWhatsNew_Previews: PreviewProvider {
    static var previews: some View {
        listOptionWhatsNew()
    }
}
