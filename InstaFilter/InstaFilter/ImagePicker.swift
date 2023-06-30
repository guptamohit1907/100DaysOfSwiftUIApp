//
//  ImagePicker.swift
//  InstaFilter
//
//  Created by Mohit Gupta on 30/06/23.
//

import PhotosUI
import SwiftUI

struct ImagePicker : UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> PHPickerViewController {
        var config = PHPickerConfiguration()
        config.filter = .images
        
        let picker = PHPickerViewController(configuration: config)
        return picker
    }
    
    func updateUIViewController(_ uiViewController: PHPickerViewController, context: Context) {
        <#code#>
    }
    
    typealias UIViewControllerType = PHPickerViewController
}
