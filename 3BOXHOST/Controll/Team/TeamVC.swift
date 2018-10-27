//
//  TeamVC.swift
//  3BOXHOST
//
//  Created by mac on 10/9/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class TeamVC: UIViewController {
//    func YTTapButton(url: String) {
//         print("url\(url)")
//    }
//
//    func InTapButton(url: String) {
//         print("url\(url)")
//    }
//
//
    
    
    
    
  
    
//    func TwTapButton(url: String) {
//        print("url\(url)")
//    }
    
    
 
    @IBOutlet weak var dribbleImage: UIImageView!
    @IBOutlet weak var dribbleImage1: UIImageView!
    @IBOutlet weak var dribbleImage2: UIImageView!
    @IBOutlet weak var dribbleImage3: UIImageView!
    @IBOutlet weak var dribbleImage4: UIImageView!
    @IBOutlet weak var dribbleImage5: UIImageView!
    
    
    
    
    

    
    
    @IBOutlet weak var behanceImage: UIImageView!
    @IBOutlet weak var behanceImage1: UIImageView!
    @IBOutlet weak var behanceImage2: UIImageView!
    @IBOutlet weak var behanceImage3: UIImageView!
    @IBOutlet weak var behanceImage4: UIImageView!
    @IBOutlet weak var behanceImage5: UIImageView!
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     imageClickable()
    }
    
    
    
    
    
    func imageClickable() {
     
      
        
        
        
        // behance
        let Gesture = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.behanceimageTapped(gesture:)))
        
        behanceImage.addGestureRecognizer(Gesture)
        behanceImage.isUserInteractionEnabled = true
        
        
        // behance
        let Gesture1 = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.behanceimageTapped(gesture:)))
        
        behanceImage1.addGestureRecognizer(Gesture1)
        behanceImage1.isUserInteractionEnabled = true
        
        // behance
        let Gesture2 = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.behanceimageTapped(gesture:)))
        
        behanceImage2.addGestureRecognizer(Gesture2)
        behanceImage2.isUserInteractionEnabled = true
        
        // behance
        let Gesture3 = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.behanceimageTapped(gesture:)))
        
        behanceImage3.addGestureRecognizer(Gesture3)
        behanceImage3.isUserInteractionEnabled = true
        // behance
        let Gesture4 = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.behanceimageTapped(gesture:)))
        
        behanceImage4.addGestureRecognizer(Gesture4)
        behanceImage4.isUserInteractionEnabled = true
        // behance
        let Gesture5 = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.behanceimageTapped(gesture:)))
        
        behanceImage5.addGestureRecognizer(Gesture5)
        behanceImage5.isUserInteractionEnabled = true
        
        
        
        
        
        
        
        
        
        
        // dribbler
        let taGestu = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.dribbleimageTapped(gesture:)))
        
        dribbleImage.addGestureRecognizer(taGestu)
        dribbleImage.isUserInteractionEnabled = true
        
        
        
        
        // dribbler
        let taGestu1 = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.dribbleimageTapped(gesture:)))
        
        
        dribbleImage1.addGestureRecognizer(taGestu1)
        dribbleImage1.isUserInteractionEnabled = true
        
        
        
        // dribbler
        let taGestu2 = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.dribbleimageTapped(gesture:)))
        dribbleImage2.addGestureRecognizer(taGestu2)
        dribbleImage2.isUserInteractionEnabled = true
        
        // dribbler
        let taGestu3 = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.dribbleimageTapped(gesture:)))
        dribbleImage3.addGestureRecognizer(taGestu3)
        dribbleImage3.isUserInteractionEnabled = true
        
        
        // dribbler
        let taGestu4 = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.dribbleimageTapped(gesture:)))
        dribbleImage4.addGestureRecognizer(taGestu4)
        dribbleImage4.isUserInteractionEnabled = true
        // dribbler
        let taGestu5 = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.dribbleimageTapped(gesture:)))
        dribbleImage5.addGestureRecognizer(taGestu5)
        dribbleImage5.isUserInteractionEnabled = true
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

    
    
}
