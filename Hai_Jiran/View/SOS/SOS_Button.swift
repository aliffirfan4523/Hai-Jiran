//
//  SOS_Button.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

struct SOS_Button: View {
    @GestureState var tap = false
    @State var press = false
    
    var body: some View {
        ZStack {
            Image(systemName: "sos")
                .foregroundColor(.white)
                .font(.system(size: 44, weight: .light))
                .opacity(press ? 0 : 1)
                .scaleEffect(press ? 0 : 1)
            Image(systemName: "iphone.gen3.radiowaves.left.and.right")
                .font(.system(size: 44, weight: .light))
                .foregroundColor(Color(.white))
                .opacity(press ? 1 : 0)
                .scaleEffect(press ? 1 : 0)
            }
        .frame(width: 140, height: 80)
        .background(
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(press ? .red : .red), Color(press ? .red : .red)]), startPoint: .topLeading, endPoint: .bottomTrailing)
            }
        )
            .clipShape(Rectangle())
            .cornerRadius(20)
            .overlay(
                    Rectangle()
                    .trim(from: tap ? 0.001 : 1, to: 1)
                    .stroke(Color.white, style: StrokeStyle(lineWidth: 5, lineCap: .round))
                    .frame(width: 80, height: 150)
                    .cornerRadius(10)
                    .rotationEffect(Angle(degrees: 90))
                    .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                    .shadow(color: Color.purple.opacity(0.3), radius: 5, x: 3, y: 3)
                    .animation(.easeInOut)
                    
            )
            .shadow(color: Color(press ? .red : .white), radius: 1, x: -1, y: -1)
            .shadow(color: Color(press ? .white : .red), radius: 1, x: 1, y: 1)
            .scaleEffect(tap ? 1.3 : 1)
            .gesture(
                LongPressGesture(minimumDuration: 3).updating($tap) { currentState, gestureState,
                    transaction in
                    gestureState = currentState
                }
                .onEnded { value in
                self.press.toggle()
                SOS_CallAll()
                }
        )
    }
}

struct SOS_Button_Previews: PreviewProvider {
    static var previews: some View {
        SOS_Button()
    }
}
