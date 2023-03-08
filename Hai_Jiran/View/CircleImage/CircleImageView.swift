//
//  CircleImage.swift
//  Hai_Jiran
//
//  Created by stdc user on 27/02/2023.
//

import SwiftUI

struct CircleImage: View {
    var width:CGFloat = 160
    var height:CGFloat = 110
    var userData : Data?
    
    
    var body: some View {
        if let uiImage = UIImage(data: userData!)  {
            Image(uiImage: uiImage)
                .resizable()
                .frame(width: width, height: height)
                    .aspectRatio(contentMode: .fill)
                         .clipShape(Circle())
                         .overlay(Circle().stroke(Color.white, lineWidth: 2))
                         .shadow(radius: 10)
        }
    }
}

#if DEBUG
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(userData: UserModel().UserList[0].image)
    }
}
#endif
