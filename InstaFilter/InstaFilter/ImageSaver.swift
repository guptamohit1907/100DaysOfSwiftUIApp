//
//  ImageSaver.swift
//  InstaFilter
//
//  Created by Mohit Gupta on 03/07/23.
//

import UIKit
class ImageSaver : NSObject {
    
    func writeToPhotoAlbum(image : UIImage){
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }
    
    @objc func saveCompleted(_ image : UIImage, didFinishWithSavingError error : Error?, contextInfo : UnsafeRawPointer){
        print("Save Finished")
    }
    
}
