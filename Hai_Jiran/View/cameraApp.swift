//
//  cameraApp.swift
//  Hai_Jiran
//
//  Created by stdc user on 03/03/2023.
//

import SwiftUI

struct cameraApp: View {
    
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    
    let screenWidth = UIScreen.main.bounds.width
    
    @Binding  var image: UIImage?
    
    var body: some View {
        
        NavigationStack{
            
            VStack{
                
                Image(uiImage: image ?? UIImage(systemName: "photo.on.rectangle.angled")!)
                    .resizable()
                    .frame(width: 120, height: 120)
                
                Button("Choose Picture"){
                    self.showSheet = true
                }
                .font(.custom("Avenir", size: 15))
                .padding(5)
                    .actionSheet(isPresented: $showSheet){
                        ActionSheet(title: Text("Select Photo"),
                                    message: Text("Choose")
                            .font(.custom("Avenir", size: 5)), buttons: [
                                        .default(Text("Photo Library")) {
                                            self.showImagePicker = true
                                            self.sourceType = .photoLibrary
                                        },
                                        .default(Text("Camera")) {
                                            self.showImagePicker = true
                                            self.sourceType = .camera
                                        },
                                        .cancel()
                                    ])
                    }
            }
            .foregroundColor(.gray)
            .navigationBarTitle("")
            
        }.sheet(isPresented: $showImagePicker) {
            ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
        }
        .frame(width: screenWidth-200, height: 150)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(Color("mainColorTheme"), lineWidth: 2))
    }
}

struct cameraApp_Previews: PreviewProvider {
    static var previews: some View {
        seccameraApp(image: .constant(UIImage()))
    }
}

struct seccameraApp: View {
    
    @State private var showSheet: Bool = false
    @State private var showImagePicker: Bool = false
    @State private var sourceType: UIImagePickerController.SourceType = .camera
    
    let screenWidth = UIScreen.main.bounds.width
    
    @Binding  var image: UIImage?
    
    var body: some View {
        
        NavigationStack{
            ZStack(){
                VStack{
                    Image(systemName: "camera")
                    Text("Add Image")
                    .font(.custom("Avenir", size: 15))
                }
                Image(uiImage: image ?? UIImage(systemName: "photo.on.rectangle.angled")!)
                    .resizable()
                    .frame(width: 120, height: 120)
            }
                .foregroundColor(Color("mainColorTheme"))
                .onTapGesture {
                    self.showSheet = true
                }.actionSheet(isPresented: $showSheet){
                    ActionSheet(title: Text("Select Photo"),
                                message: Text("Choose")
                        .font(.custom("Avenir", size: 5)), buttons: [
                                    .default(Text("Photo Library")) {
                                        self.showImagePicker = true
                                        self.sourceType = .photoLibrary
                                    },
                                    .default(Text("Camera")) {
                                        self.showImagePicker = true
                                        self.sourceType = .camera
                                    },
                                    .cancel()
                                ])
                }
            
        }.sheet(isPresented: $showImagePicker) {
            ImagePicker(image: self.$image, isShown: self.$showImagePicker, sourceType: self.sourceType)
        }
        .frame(width: screenWidth-200, height: 150)
    }
}
