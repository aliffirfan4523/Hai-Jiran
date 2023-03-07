//
//  SOS_Call.swift
//  Hai_Jiran
//
//  download by stdc user on 06/03/2023.
//

import SwiftUI


class Timers: ObservableObject {
    @Published var times = Timer.publish(every: 1, on: .current, in: .common).autoconnect()
    @Published var time = 0
}

struct SOS_Call: View {
    @State var call = false
    @State var xmark = false
    
    @Namespace var ani
    
    @StateObject var time = Timers()
    @GestureState var tap = false
    @State var press = false
    
    @State private var path: [Int] = []
    @State private var isPresented: Bool = false
    
    
    var body: some View {
        ZStack {
            if self.call == false {
                VStack {
                    Button(action: {})
                        {
                            ZStack {
                                VStack{
                                    Image(systemName: "sos")
                                        .foregroundColor(.white)
                                        .font(.custom("Avenir", size: 45))
                                        .opacity(press ? 0 : 1)
                                        .scaleEffect(press ? 0 : 1)
                                    Text("Long press 3s<")
                                        .foregroundColor(.white)
                                        .font(.custom("Avenir", size: 15))
                                        .opacity(press ? 0 : 1)
                                        .scaleEffect(press ? 0 : 1)
                                }
                                VStack{
                                    Image(systemName: "sos")
                                        .foregroundColor(.white)
                                        .font(.custom("Avenir", size: 45))
                                        .opacity(press ? 1 : 0)
                                        .scaleEffect(press ? 1 : 0)
                                    Text("Long press 3s<")
                                        .foregroundColor(.white)
                                        .font(.custom("Avenir", size: 15))
                                        .opacity(press ? 1 : 0)
                                        .scaleEffect(press ? 1 : 0)
                                }
                            }
                            
                            .frame(width: 140, height: 80)
                            .background(
                                ZStack {
                                    LinearGradient(gradient: Gradient(colors: [Color(press ? .red : .red), Color(press ? .red : .red)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                })
                            
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .trim(from: tap ? 0.001 : 1, to: 1)
                                    .stroke(Color.white, style: StrokeStyle(lineWidth: 3, lineCap: .round))
                                    .frame(width: 70, height: 130)
                                    .cornerRadius(20)
                                    .rotationEffect(Angle(degrees: 90))
                                    .rotation3DEffect(Angle(degrees: 180), axis: (x: 1, y: 0, z: 0))
                                    .shadow(color: Color.white.opacity(0.3), radius: 5, x: 3, y: 3)
                                    .animation(.default)
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
                                        self.call.toggle()
                                        
                                        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                            if self.time.time == Int(0) {
                                                self.time.time += 1
                                            } else {
                                                self.time.time = 0
                                            }
                                        }
                                    }
                            )
                            .offset(y: self.call ? 0:20)
                    }.animation(.default)
                }
                .padding()
            }
 
            // Frame calling active
            else {
                Rectangle()
                    .fill(Color.black.opacity(0.85))
                    .edgesIgnoringSafeArea(.all)
                withAnimation(.default) {
                    VStack(spacing: 15) {
                        HStack{
                            Text("All Resident")
                                .font(.custom("Avenir", size: 40))
                                .font(.largeTitle)
                                .foregroundColor(.white)
                            Image(systemName: "info.circle")
                                .resizable()
                                .frame(width: 25, height: 25)
                                .padding()
                                .foregroundColor(.blue)
                                .opacity(0.5)
                        }
                        Text("00.\(self.time.time)").padding()
                            .font(.system(size: 25))
                            .foregroundColor(.gray)
                            .frame(width: UIScreen.main.bounds.width - 32)
                        
                        Spacer()
                        HStack(spacing: 35) {
                            Button(action: {}) {
                                VStack {
                                    ZStack{
                                        Circle()
                                            .foregroundColor(.white
                                            )
                                            .opacity(0.1)
                                            .frame(width: 80)
                                        Image(systemName: "mic.slash.fill")
                                            .resizable()
                                            .frame(width: 30, height: 40)
                                            .padding()
                                            .foregroundColor(.white)
                                    }
                                    Text("mute")
                                        .foregroundColor(.white)
                                }
                            } //btn
                            
                            Button(action: {}) {
                                VStack {
                                    ZStack{
                                        Circle()
                                            .foregroundColor(.white
                                            )
                                            .opacity(0.1)
                                            .frame(width: 80)
                                        Image(systemName: "circle.grid.3x3.fill")
                                            .resizable()
                                            .frame(width: 35, height: 35)
                                            .padding()
                                            .foregroundColor(.white)
                                    }
                                    Text("keypad")
                                        .foregroundColor(.white)
                                }
                            } //btn
                            
                            Button(action: {}) {
                                VStack {
                                    ZStack{
                                        Circle()
                                            .foregroundColor(.white
                                            )
                                            .frame(width: 80)
                                        Image(systemName: "speaker.wave.3.fill")
                                            .resizable()
                                            .frame(width: 45, height: 30)
                                            .padding()
                                            .foregroundColor(.black)
                                    }
                                    Text("audio")
                                        .foregroundColor(.white)
                                }
                            } //btn
                        }
                            
                        HStack(spacing: 35) {
                            Button(action: {}) {
                                VStack {
                                    ZStack{
                                        Circle()
                                            .foregroundColor(.white
                                            )
                                            .opacity(0.1)
                                            .frame(width: 80)
                                        Image(systemName: "plus")
                                            .resizable()
                                            .frame(width: 30, height: 30)
                                            .padding()
                                            .foregroundColor(.white)
                                    }
                                    Text("add call")
                                        .foregroundColor(.white)
                                }
                            } //btn
                            
                            Button(action: {}) {
                                VStack {
                                    ZStack{
                                        Circle()
                                            .foregroundColor(.white
                                            )
                                            .opacity(0.1)
                                            .frame(width: 80)
                                        Image(systemName: "video.fill")
                                            .resizable()
                                            .frame(width: 45, height: 30)
                                            .padding()
                                            .foregroundColor(.white)
                                    }
                                    Text("Facetime")
                                        .foregroundColor(.white)
                                }
                            } //btn
                            
                            Button(action: {}) {
                                VStack {
                                    ZStack{
                                        Circle()
                                            .foregroundColor(.white
                                            )
                                            .opacity(0.1)
                                            .frame(width: 80)
                                        Image(systemName: "person.circle")
                                            .resizable()
                                            .frame(width: 40, height: 40)
                                            .padding()
                                            .foregroundColor(.white)
                                    }
                                    Text("contacts")
                                        .foregroundColor(.white)
                                }
                            } //btn
                        }
                        Spacer()
                        
                        Button(action: {
                            withAnimation(.default) {
                                self.call.toggle()
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                    if self.time.time == Int(20) {
                                        self.time.time += 1
                                    } else {
                                        self.time.time = 0
                                    }
                                }
                            }
                        }) {
                            ZStack {
                                Circle()
                                    .foregroundColor(.red
                                    )
                                    .frame(width: 80)
                                Image(systemName: "phone.down.fill")
                                    .resizable()
                                    .frame(width: 40, height: 15)
                                    .padding()
                                    .foregroundColor(.white)
                                }
                        }//btn
                        Spacer()
                    }.matchedGeometryEffect(id: "ID", in: ani)
                }.animation(.default)
                .colorScheme(.dark)
            }//if
        }//zstack
        .onReceive(self.time.times){ _ in
            if self.call {
                
                if self.time.time != Int(0.20) {
                    self.time.time += 1
                } else {
                    self.time.time = 0
                }
            }
        }
    }
}

struct MakingACall_Previews: PreviewProvider {
    static var previews: some View {
        SOS_Call()
    }
}
