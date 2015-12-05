//
//  SubmitReportViewController.swift
//  JomReport
//
//  Created by Nik Muhammad Amin on 11/11/15.
//  Copyright © 2015 JomReport. All rights reserved.
//

import UIKit

class SubmitReportViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.imagePicker.delegate = self
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func cameraButtonTapped(sender: UIButton) {
        
        self.imagePicker.allowsEditing = false
        self.imagePicker.sourceType = .Camera
        self.presentViewController(self.imagePicker, animated: true, completion: nil)
        
    }
}

