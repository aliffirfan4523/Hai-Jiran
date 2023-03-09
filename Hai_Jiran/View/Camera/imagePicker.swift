//
//  ImagePicker.swift
//  Hai_Jiran
//
//  Created by stdc user on 03/03/2023.
//

import Foundation
import SwiftUI


class ImagePickerCoordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    @Binding var image: UIImage?
    @Binding var isShown: Bool
    
    init(image: Binding<UIImage?>, isShown: Binding<Bool>) {
        _image = image
        _isShown = isShown
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let uiImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            // Rotate image to correct orientation
            let orientedImage = UIImage(cgImage: uiImage.cgImage!, scale: uiImage.scale, orientation: .up)
            
            let compressedImage = orientedImage.jpegData(compressionQuality: 0.5)
            
            image = UIImage(data: compressedImage!)
            isShown = false
        }
        
    }
}


struct ImagePicker: UIViewControllerRepresentable {
    
    typealias UIViewControllerType = UIImagePickerController
    typealias Coordinator = ImagePickerCoordinator
    
    @Binding var image: UIImage?
    @Binding var isShown: Bool
    
    var sourceType: UIImagePickerController.SourceType = .camera
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: UIViewControllerRepresentableContext<ImagePicker>) {

    }
    
    func makeCoordinator() -> ImagePicker.Coordinator {
        return ImagePickerCoordinator(image: $image, isShown: $isShown)
    }
    func makeUIViewController(context: UIViewControllerRepresentableContext<ImagePicker>) -> UIImagePickerController {
        
        let picker = UIImagePickerController()
        picker.sourceType = sourceType
        picker.delegate = context.coordinator
        return picker
    }
    
}
