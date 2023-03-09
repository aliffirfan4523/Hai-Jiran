//
//  AddInfo.swift
//  Hai_Jiran
//
//  Created by stdc user on 02/03/2023.
//

import SwiftUI

struct AddInfoView: View {
    @Environment(\.presentationMode) var presentationMode
    
    @EnvironmentObject var userList: UserModel
    
    @State private var detailsString = ""
    @State private var titleString = ""
    @State private var date = Date()
    @State private var image: UIImage? = UIImage()
    @State private var descriptionString = ""
    @State private var contactNumString = ""
    @State private var PersonNameString = ""
    @State private var showAlert = false
    
    var body: some View {
        VStack(alignment: .center, spacing: 5) {
            Text("I want to tell something...")
                .font(.custom("Avenir", size: 20))
                .bold()
            TextEditor(text: $detailsString)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("mainColorTheme"), lineWidth: 2))
                .frame(width: .infinity, height: 70)
            
            //input image
            seccameraApp(image: $image).overlay(RoundedRectangle(cornerRadius: 8)
                .stroke(Color("mainColorTheme"), lineWidth: 2))
            
            //title of image
            HStack{
                Text("Title")
                    .font(.custom("Avenir", size: 15))
                    .bold()
                TextField("Title", text: $titleString)
                    .textFieldStyle(.roundedBorder)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("mainColorTheme"), lineWidth: 2))
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
            TextEditor(text: $descriptionString)
                .overlay(RoundedRectangle(cornerRadius: 8)
                    .stroke(Color("mainColorTheme"), lineWidth: 2))
                .frame(width: .infinity, height: 150)
            HStack{
                Text("Contact \nNumber")
                    .font(.custom("Avenir", size: 15))
                    .bold()
                TextField("Number", text: $contactNumString)
                    .textFieldStyle(.roundedBorder)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("mainColorTheme"), lineWidth: 2))
                Text("Person \nName")
                    .font(.custom("Avenir", size: 15))
                    .bold()
                TextField("Name", text: $PersonNameString)
                    .textFieldStyle(.roundedBorder)
                    .overlay(RoundedRectangle(cornerRadius: 8)
                        .stroke(Color("mainColorTheme"), lineWidth: 2))
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
                        tellThem()
                    })
                    .foregroundColor(.white).bold()
                }
            }
            Spacer()
        }.padding(40)
            .alert(isPresented: $showAlert) {
                        Alert(title: Text("Error"), message: Text("Please fill in all required fields."), dismissButton: .default(Text("OK")))
                    }
    }
    
    func tellThem() {
        // Check if any of the required fields is empty
        if detailsString.isEmpty || titleString.isEmpty || descriptionString.isEmpty {
                // Show an alert to the user
                showAlert = true
        }else{
            // Add the new info to the array
            let newData = Info(name: userList.UserList[0].profileName,
                               details: detailsString,
                               image: image ?? UIImage(),
                               title: titleString,
                               date: date,
                               description: descriptionString,
                               contactNum: contactNumString,
                               personName: PersonNameString)
            userList.newInfos.append(newData)
            userList.myInfos.append(newData)
            //print(newData)
            // Close the page
            presentationMode.wrappedValue.dismiss()
        }
        
        
    }
    
    struct AddInfo_Previews: PreviewProvider {
        static var previews: some View {
            AddInfoView()
        }
    }
}
