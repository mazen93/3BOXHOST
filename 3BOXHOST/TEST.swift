//
//  TEST.swift
//  3BOXHOST
//
//  Created by mac on 10/8/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class TEST: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func Youtube(_ sender: Any) {
        
        
        
        
        
        let fbURL=URL(string: "https://www.youtube.com/channel/UCef_X-q7E7XiKfrqRqLVVNQ")
        
        
        if (UIApplication.shared.canOpenURL(fbURL!)){
            //FB INSTALL
            UIApplication.shared.open(fbURL!)
        }else{
            UIApplication.shared.canOpenURL(fbURL!)
            
        }
    }
    
    @IBAction func Instagram(_ sender: Any) {
        
        
        
        let fbURL=URL(string: "https://www.instagram.com/3boxhost/")
        
        
        if (UIApplication.shared.canOpenURL(fbURL!)){
            //FB INSTALL
            UIApplication.shared.open(fbURL!)
        }else{
            UIApplication.shared.canOpenURL(fbURL!)
            
        }
    }
    @IBAction func linkedIn(_ sender: Any) {
        let fbURL=URL(string: "https://www.linkedin.com/company/3boxhost")
        
        
        if (UIApplication.shared.canOpenURL(fbURL!)){
            //FB INSTALL
            UIApplication.shared.open(fbURL!)
        }else{
            UIApplication.shared.canOpenURL(fbURL!)
            
        }
    }
    @IBAction func Twitter(_ sender: Any) {
        let fbURL=URL(string: "https://twitter.com/3boxhost")
        
        if (UIApplication.shared.canOpenURL(fbURL!)){
            //FB INSTALL
            UIApplication.shared.openURL(fbURL!)
        }else{
            UIApplication.shared.canOpenURL(fbURL!)
            
        }
    }
    
    @IBAction func Facbook(_ sender: Any) {
        
        let fbURL=URL(string: "https://www.facebook.com/3boxhost")
        
        if (UIApplication.shared.canOpenURL(fbURL!)){
            //FB INSTALL
            UIApplication.shared.open(fbURL!)
        }else{
            UIApplication.shared.canOpenURL(fbURL!)

        }
        
    }
    
}
