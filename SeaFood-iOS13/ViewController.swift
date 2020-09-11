//
//  ViewController.swift
//  SeaFood-iOS13
//
//  Created by Alex 6.1 on 9/11/20.
//  Copyright © 2020 aglegaspi. All rights reserved.
//

import UIKit
import CoreML
import Vision // helps us process images more easily and use images with coreml reducing code

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    @IBOutlet weak var imageView: UIImageView!
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupImagePicker()
    }
    
    // this tells the delegate the user has picked an image or video
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let userPickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = userPickedImage
        } // get a hold of the image the user has selected
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    private func setupImagePicker() {
        imagePicker.delegate = self
        imagePicker.sourceType = .camera
        imagePicker.allowsEditing = false
    }

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil)
    }
    
}

