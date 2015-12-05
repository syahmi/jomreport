//
//  SubmitReportViewController.swift
//  JomReport
//
//  Created by Nik Muhammad Amin on 11/11/15.
//  Copyright © 2015 JomReport. All rights reserved.
//

import UIKit

class SubmitReportViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var issueImageView: UIImageView!
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
    
    @IBAction func cancelBarButtonItem(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cameraButtonTapped(sender: UIButton) {
        
        self.imagePicker.allowsEditing = false
        self.imagePicker.sourceType = .Camera
        self.presentViewController(self.imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            self.issueImageView.image = pickedImage
            self.dismissViewControllerAnimated(true, completion: nil)
        }
    }
}

