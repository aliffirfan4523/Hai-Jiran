//
//  AddInfo.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

struct AddInfo: View {
    
    @State private var tellString = ""
    @State private var titleString = ""
    @State private var date = Date.now
    @State private var describeString = ""
    @State private var ContactNumString = ""
    @State private var PersonNameString = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("I want to tell something...")
                .font(.custom("Avenir", size: 20))
                .bold()
            TextEditor(text: $tellString)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(maincolor, lineWidth: 2))
                .frame(width: .infinity, height: 70)
            
            //input image
            cameraApp()
            
            //title of image
            HStack{
                Text("Title")
                    .font(.custom("Avenir", size: 15))
                    .bold()
                TextField("Title", text: $titleString)
                    .textFieldStyle(.roundedBorder)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(maincolor, lineWidth: 2))
            }
            
            // date and time picker
            HStack {
                DatePicker(selection: $date, in: ...Date.now, displayedComponents: .date) {
                    Text("Select a date")
                        .font(.custom("Avenir", size: 15))
                        .bold()
                }
            }
            
            Text("Describe it..")
                .font(.custom("Avenir", size: 15))
                .bold()
            TextEditor(text: $describeString)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(maincolor, lineWidth: 2))
                .frame(width: .infinity, height: 150)
            HStack{
                Text("Contact \nNumber")
                    .font(.custom("Avenir", size: 15))
                    .bold()
                TextField("Number", text: $ContactNumString)
                    .textFieldStyle(.roundedBorder)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(maincolor, lineWidth: 2))
                Text("Person \nName")
                    .font(.custom("Avenir", size: 15))
                    .bold()
                TextField("Name", text: $PersonNameString)
                    .textFieldStyle(.roundedBorder)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(maincolor, lineWidth: 2))
            }
            
            /// button segmen
            HStack {
                Spacer(minLength: 100)
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .fill(Color.blue)
                        .frame(width: 100, height: 35)
                    Button("Tell them!", action: {
                        //ContentView()
                    })
                    .foregroundColor(.white).bold()
                }
            }
            Spacer()
        }.padding(30)
    }
    
    struct AddInfo_Previews: PreviewProvider {
        static var previews: some View {
            AddInfo()
        }
    }
}
