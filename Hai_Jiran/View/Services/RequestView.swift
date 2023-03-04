//
//  RequestView.swift
//  Hai_Jiran
//
//  Created by stdc user on 03/03/2023.
//

import SwiftUI

struct RequestView: View {
    var body: some View {
        Link("Visit Our Site", destination: URL(string: "https://www.youtube.com")!)
            
    }
}

struct RequestView_Previews: PreviewProvider {
    static var previews: some View {
        RequestView()
    }
}
