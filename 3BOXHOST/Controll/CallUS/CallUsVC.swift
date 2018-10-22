//
//  CallUsVC.swift
//  3BOXHOST
//
//  Created by mac on 10/19/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class CallUsVC: UIViewController {

    @IBOutlet weak var youtube: UIImageView!
    @IBOutlet weak var dribbleImage: UIImageView!
    @IBOutlet weak var linkedInImage: UIImageView!
    @IBOutlet weak var behanceImage: UIImageView!
    @IBOutlet weak var instagramImage: UIImageView!
    @IBOutlet weak var facebookImage: UIImageView!
    @IBOutlet weak var twitterImage: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
         ImageClickabe()
   
    }
    
    
    func ImageClickabe() {
        
        
        // facebook
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.facebookimageTapped(gesture:)))
        
        facebookImage.addGestureRecognizer(tapGesture)
        facebookImage.isUserInteractionEnabled = true
        
        // twitter
        let taGesture = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.twitterimageTapped(gesture:)))
        
        twitterImage.addGestureRecognizer(taGesture)
        twitterImage.isUserInteractionEnabled = true
        
        
        
        // linked
        let tGesture = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.linkedimageTapped(gesture:)))
        
        linkedInImage.addGestureRecognizer(tGesture)
        linkedInImage.isUserInteractionEnabled = true
        
        // insta
        let taGestur = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.instagramimageTapped(gesture:)))
        
        instagramImage.addGestureRecognizer(taGestur)
        instagramImage.isUserInteractionEnabled = true
        
        
        
        // behance
        let Gesture = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.behanceimageTapped(gesture:)))
        
        behanceImage.addGestureRecognizer(Gesture)
        behanceImage.isUserInteractionEnabled = true
        
        // dribbler
        let taGestu = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.dribbleimageTapped(gesture:)))
        
        dribbleImage.addGestureRecognizer(taGestu)
        dribbleImage.isUserInteractionEnabled = true
        
        
        // youtube
        let taGest = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.youtubeimageTapped(gesture:)))
        
        youtube.addGestureRecognizer(taGest)
        youtube.isUserInteractionEnabled = true
        
        
    }
    
    
    @objc func youtubeimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            print("Image Tapped")
            //Here you can initiate your new ViewController
            let fbURL=URL(string: "https://www.facebook.com/3boxhost")
            
            if (UIApplication.shared.canOpenURL(fbURL!)){
                //FB INSTALL
                UIApplication.shared.open(fbURL!)
            }else{
                UIApplication.shared.canOpenURL(fbURL!)
                
            }
        }
    }

    
    
    
    @objc func facebookimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            print("Image Tapped")
            //Here you can initiate your new ViewController
            let fbURL=URL(string: "https://www.facebook.com/3boxhost")
            
            if (UIApplication.shared.canOpenURL(fbURL!)){
                //FB INSTALL
                UIApplication.shared.open(fbURL!)
            }else{
                UIApplication.shared.canOpenURL(fbURL!)
                
            }
        }
    }

    @objc func twitterimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            print("Image Tapped")
            //Here you can initiate your new ViewController
            
            
            let fbURL=URL(string: "https://twitter.com/3boxhost")
            
            if (UIApplication.shared.canOpenURL(fbURL!)){
                //FB INSTALL
                UIApplication.shared.openURL(fbURL!)
            }else{
                UIApplication.shared.canOpenURL(fbURL!)
                
            }
            
        }
    }
    @objc func linkedimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            print("Image Tapped")
            //Here you can initiate your new ViewController
             let fbURL=URL(string: "https://www.linkedin.com/company/3boxhost")
            
            if (UIApplication.shared.canOpenURL(fbURL!)){
                //FB INSTALL
                UIApplication.shared.open(fbURL!)
            }else{
                UIApplication.shared.canOpenURL(fbURL!)
                
            }
            
        }
    }
    
    @objc func instagramimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            //print("Image Tapped")
            //Here you can initiate your new ViewController
            
            
            let fbURL=URL(string: "https://www.youtube.com/channel/UCef_X-q7E7XiKfrqRqLVVNQ")
            
            
                    if (UIApplication.shared.canOpenURL(fbURL!)){
                        //FB INSTALL
                        UIApplication.shared.open(fbURL!)
                    }else{
                        UIApplication.shared.canOpenURL(fbURL!)
            
                    }
            
        }
    }
    
    @objc func behanceimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            print("Image Tapped")
            //Here you can initiate your new ViewController
            
            let fbURL=URL(string: "https://www.behance.net/3boxsafb7d")
            
            if (UIApplication.shared.canOpenURL(fbURL!)){
                //FB INSTALL
                UIApplication.shared.open(fbURL!)
            }else{
                UIApplication.shared.canOpenURL(fbURL!)
                
            }
            
            
            
            
        }
    }
    
    @objc func dribbleimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        if (gesture.view as? UIImageView) != nil {
            print("Image Tapped")
            //Here you can initiate your new ViewController
            
            
            
            //https://www.3boxhost.com
            let fbURL=URL(string: "https://www.3boxhost.com")
            
            if (UIApplication.shared.canOpenURL(fbURL!)){
                //FB INSTALL
                UIApplication.shared.open(fbURL!)
            }else{
                UIApplication.shared.canOpenURL(fbURL!)
                
            }
        }
    }
    
//    @IBAction func Youtube(_ sender: Any) {
//
//
//
//
//
//        let fbURL=URL(string: "https://www.youtube.com/channel/UCef_X-q7E7XiKfrqRqLVVNQ")
//
//
//        if (UIApplication.shared.canOpenURL(fbURL!)){
//            //FB INSTALL
//            UIApplication.shared.open(fbURL!)
//        }else{
//            UIApplication.shared.canOpenURL(fbURL!)
//
//        }
//    }
    
//    @IBAction func Instagram(_ sender: Any) {
//
//
//
//        let fbURL=URL(string: "https://www.instagram.com/3boxhost/")
//
//
//        if (UIApplication.shared.canOpenURL(fbURL!)){
//            //FB INSTALL
//            UIApplication.shared.open(fbURL!)
//        }else{
//            UIApplication.shared.canOpenURL(fbURL!)
//
//        }
//    }
//    @IBAction func linkedIn(_ sender: Any) {
//        let fbURL=URL(string: "https://www.linkedin.com/company/3boxhost")
//
//
//        if (UIApplication.shared.canOpenURL(fbURL!)){
//            //FB INSTALL
//            UIApplication.shared.open(fbURL!)
//        }else{
//            UIApplication.shared.canOpenURL(fbURL!)
//
//        }
//    }
//    @IBAction func Twitter(_ sender: Any) {
//        let fbURL=URL(string: "https://twitter.com/3boxhost")
//
//        if (UIApplication.shared.canOpenURL(fbURL!)){
//            //FB INSTALL
//            UIApplication.shared.openURL(fbURL!)
//        }else{
//            UIApplication.shared.canOpenURL(fbURL!)
//
//        }
//    }
//
//    @IBAction func Facbook(_ sender: Any) {
//
//        let fbURL=URL(string: "https://www.facebook.com/3boxhost")
//
//        if (UIApplication.shared.canOpenURL(fbURL!)){
//            //FB INSTALL
//            UIApplication.shared.open(fbURL!)
//        }else{
//            UIApplication.shared.canOpenURL(fbURL!)
//
//        }
//
//    }
    
}
   

