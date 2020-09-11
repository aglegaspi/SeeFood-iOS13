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
    @IBOutlet weak var imageViewe: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
    }
    
}

