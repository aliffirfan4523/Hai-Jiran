//
//  CircleImage.swift
//  Hai_Jiran
//
//  Created by stdc user on 27/02/2023.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
          Image("ahmadalbab")
            .resizable()
            .frame(width: 160, height: 110)
                .aspectRatio(contentMode: .fill)
                     .clipShape(Circle())
                     .overlay(Circle().stroke(Color.white, lineWidth: 2))
                     .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
#endif
