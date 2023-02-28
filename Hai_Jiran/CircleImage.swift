//
//  CircleImage.swift
//  Hai_Jiran
//
//  Created by stdc user on 27/02/2023.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
          Image("myimage")
            .resizable()
            .frame(width: 120, height: 120)
                .aspectRatio(contentMode: .fit)
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
