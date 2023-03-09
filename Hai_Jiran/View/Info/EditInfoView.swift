//
//  AddInfo.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

struct EditInfoView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @State var info: Info = Info(
        name: "",
        details: "",
        image: UIImage(),
        title: "",
        date: Date(),
        description: "",
        contactNum: "",
        personName: ""
    )
    
    @State private var image: UIImage? = UIImage()
    
    @EnvironmentObject var myData: UserModel
    
    

    
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text("Edit info")
                .font(.custom("Avenir", size: 20))
                .bold()
            TextEditor(text: $info.details)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("mainColorTheme"), lineWidth: 2))
                .frame(width: .infinity, height: 70)
            
            //input image
            seccameraApp(image: $image)
            
            //title of image
            HStack{
                Text("Title")
                    .font(.custom("Avenir", size: 15))
                    .bold()
                TextField("Title", text: $info.title)
                    .textFieldStyle(.roundedBorder)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("mainColorTheme"), lineWidth: 2))
            }
            
            // date and time picker
            HStack {
                DatePicker(selection: $info.date, in: ...Date(), displayedComponents: .date) {
                    Text("Select a date")
                        .font(.custom("Avenir", size: 15))
                        .bold()
                }
            }
            
            Text("Describe it..")
                .font(.custom("Avenir", size: 15))
                .bold()
            TextEditor(text: $info.description)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("mainColorTheme"), lineWidth: 2))
                .frame(width: .infinity, height: 150)
            HStack{
                Text("Contact \nNumber")
                    .font(.custom("Avenir", size: 15))
                    .bold()
                TextField("Number", text: $info.contactNum)
                    .textFieldStyle(.roundedBorder)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("mainColorTheme"), lineWidth: 2))
                Text("Person \nName")
                    .font(.custom("Avenir", size: 15))
                    .bold()
                TextField("Name", text: $info.personName)
                    .textFieldStyle(.roundedBorder)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("mainColorTheme"), lineWidth: 2))
            }
            Button(action: {
                info.image = image?.pngData()
                //myData.updateInfo(info)
                update(info: info)
                presentationMode.wrappedValue.dismiss()
            }, label: {
                Text("Save")
                    .font(.custom("Avenir", size: 15))
                    .bold()
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, minHeight: 50)
            })
            .background(Color("mainColorTheme"))
            .cornerRadius(10)
            .padding(.top, 20)
            .padding(.bottom, 10)
            .padding(.horizontal, 20)
        }
        .padding(.horizontal, 20)
        .onAppear(perform: {
            self.image = UIImage(data: info.image!) ?? UIImage(named: "ahmadalbab")!
        })
    }
    func update(info:Info){
        if let index = myData.myInfos.firstIndex(where: { $0.id == info.id }) {
            myData.myInfos.replaceSubrange(index...index, with: [info])
            myData.newInfos.replaceSubrange(index...index, with: [info])
        }
    }
}
