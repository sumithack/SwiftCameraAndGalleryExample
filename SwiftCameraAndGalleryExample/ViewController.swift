//
//  ViewController.swift
//  SwiftCameraAndGalleryExample
//
//  Created by MacStudent on 2019-03-13.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    

    @IBOutlet weak var imgPhoto: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func btnGallery(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self as UIImagePickerControllerDelegate & UINavigationControllerDelegate;
            myPickerController.sourceType = .photoLibrary
            self.present(myPickerController, animated: true, completion: nil)
    }
    }
    @IBAction func iconCamera(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self as UIImagePickerControllerDelegate & UINavigationControllerDelegate;
            myPickerController.sourceType = .camera
            self.present(myPickerController, animated: true, completion: nil)
    }
}
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            self.imgPhoto.image = image
        }else{
            print("Something went wrong")
        }
        self.dismiss(animated: true, completion: nil)
    }
    }



