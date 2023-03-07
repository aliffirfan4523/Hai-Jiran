//
//  MakeCall.swift
//  LivingRoom
//
//  Created by App Designer2 on 18.03.21.
//
import SwiftUI


class Clock: ObservableObject {
    @Published var times = Timer.publish(every: 1, on: .current, in: .common).autoconnect()
    @Published var time = 0
}

struct MakeCall: View {
    @State var call = false
    @State var xmark = false
    
    @Namespace var ani
    
    @StateObject var time = Clock()
    
    var body: some View {
        ZStack {
            if self.call == false {
                VStack {
                    withAnimation(.easeInOut) {
                        
                        HStack(spacing: 12) {
                            Image("Alyssa")
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 60, height: 60)
                            
                            VStack(alignment: .leading) {
                                Text("Alyssa")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(Color.black.opacity(0.65))
                                
                                Text("0125881913")
                                    .foregroundColor(.secondary)
                            }
                            
                            Spacer()
                            
                            
                            Button(action: {
                                withAnimation(.default) {
                                    self.call.toggle()
                                    
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        if self.time.time == Int(0) {
                                            self.time.time += 1
                                        } else {
                                            self.time.time = 0
                                        }
                                    }
                                }
                            }) {
                                Image(systemName: "phone.fill")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .padding()
                                    .foregroundColor(.white)
                                    .background(Color.green)
                                    .clipShape(Circle())
                                
                                
                            }
                        }.padding()
                            .foregroundColor(.white)
                            .background(Color.gray.opacity(0.57))
                            .fixedSize()
                            .cornerRadius(50)
                            .shadow(radius: 5)
                        
                        
                            .offset(y: self.call ? 0:20)
                    }
                    Spacer()
                }.padding()
            }
            else {
                Rectangle()
                    .fill(Color.black.opacity(0.85))
                    .edgesIgnoringSafeArea(.all)
                withAnimation(.default) {
                    VStack(spacing: 15) {
                        HStack{
                            Text("0125881913")
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
                }//.animation(.default)
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
struct MyDesign_Previews: PreviewProvider {
    static var previews: some View {
        MakeCall()
    }
}

