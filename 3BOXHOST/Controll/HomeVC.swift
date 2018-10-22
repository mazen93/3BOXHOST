//
//  HomeVC.swift
//  3BOXHOST
//
//  Created by mac on 10/19/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit


class HomeVC: UIViewController {

 

 
    
    @IBOutlet weak var about: UIImageView!
    @IBOutlet weak var service: UIImageView!
    @IBOutlet weak var works: UIImageView!
    @IBOutlet weak var team: UIImageView!
    @IBOutlet weak var makeOrder: UIImageView!
    @IBOutlet weak var news: UIImageView!
    @IBOutlet weak var terms: UIImageView!
    @IBOutlet weak var privacy: UIImageView!
    @IBOutlet weak var callus: UIImageView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageClickabe()
        
    }
    
    
    func ImageClickabe() {
        
        
        // facebook
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(CallUsVC.facebookimageTapped(gesture:)))
        
        about.addGestureRecognizer(tapGesture)
        about.isUserInteractionEnabled = true
        
        // twitter
        let taGesture = UITapGestureRecognizer(target: self, action: #selector(HomeVC.aboutimageTapped(gesture:)))
        
        service.addGestureRecognizer(taGesture)
        service.isUserInteractionEnabled = true
        
        
        
        // linked
        let tGesture = UITapGestureRecognizer(target: self, action: #selector(HomeVC.workimageTapped(gesture:)))
        
        works.addGestureRecognizer(tGesture)
        works.isUserInteractionEnabled = true
        
        // insta
        let taGestur = UITapGestureRecognizer(target: self, action: #selector(HomeVC.teamimageTapped(gesture:)))
        
        team.addGestureRecognizer(taGestur)
        team.isUserInteractionEnabled = true
        
        
        
        // behance
        let Gesture = UITapGestureRecognizer(target: self, action: #selector(HomeVC.makeOrderimageTapped(gesture:)))
        
        makeOrder.addGestureRecognizer(Gesture)
        makeOrder.isUserInteractionEnabled = true
        
        // dribbler
        let taGestu = UITapGestureRecognizer(target: self, action: #selector(HomeVC.newsimageTapped(gesture:)))
        
        news.addGestureRecognizer(taGestu)
        news.isUserInteractionEnabled = true
        
        
        // youtube
        let taGest = UITapGestureRecognizer(target: self, action: #selector(HomeVC.termsimageTapped(gesture:)))
        
        terms.addGestureRecognizer(taGest)
        terms.isUserInteractionEnabled = true
        
        
        
        
        
        // youtube
        let taGet = UITapGestureRecognizer(target: self, action: #selector(HomeVC.privacyimageTapped(gesture:)))
        
        privacy.addGestureRecognizer(taGet)
        privacy.isUserInteractionEnabled = true
        
        // youtube
        let taGes = UITapGestureRecognizer(target: self, action: #selector(HomeVC.callusimageTapped(gesture:)))
        
        callus.addGestureRecognizer(taGes)
        callus.isUserInteractionEnabled = true
    }
    
    
    @objc func aboutimageTapped(gesture: UIGestureRecognizer) {
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
    
    
    
    
    @objc func termsimageTapped(gesture: UIGestureRecognizer) {
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
    
    @objc func privacyimageTapped(gesture: UIGestureRecognizer) {
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
    @objc func callusimageTapped(gesture: UIGestureRecognizer) {
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
    
    @objc func aboutimageTapped(gesture: UIGestureRecognizer) {
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
    
    @objc func serviceimageTapped(gesture: UIGestureRecognizer) {
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
    
    @objc func workimageTapped(gesture: UIGestureRecognizer) {
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
    
    
    @objc func makeOrderimageTapped(gesture: UIGestureRecognizer) {
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
    
    
    @objc func teamimageTapped(gesture: UIGestureRecognizer) {
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
}



