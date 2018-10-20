//
//  ServiceDetailsVC.swift
//  3BOXHOST
//
//  Created by mac on 10/19/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import SDWebImage
class ServiceDetailsVC: UIViewController {

    
    
    
    
    var details:ServiceModel?
    
    
//    var detailss:String!
//    var titlle:String!
//    var photo:UIImage!
//
    
    @IBOutlet weak var newsPhoto: UIImageView!
    
    @IBOutlet weak var newsTitle: UILabel!
    
    @IBOutlet weak var newsDetails: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        newsPhoto.sd_setImage(with: URL(string:((details?.photo!)!)), placeholderImage: UIImage(named: "layer8"))
        
        
        newsTitle.text=details?.title
        newsDetails.text=details?.details
    }
    

   

}
