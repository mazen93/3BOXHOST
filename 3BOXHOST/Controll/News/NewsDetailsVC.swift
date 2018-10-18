//
//  NewsDetailsVC.swift
//  3BOXHOST
//
//  Created by mac on 10/5/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import SDWebImage
class NewsDetailsVC: UIViewController {

    
    
    var details:newsModel!
    
    
    var detailss:String!
    var titlle:String!
    var photo:UIImage!
    
    
    @IBOutlet weak var newsPhoto: UIImageView!
    
    @IBOutlet weak var newsTitle: UILabel!
    
    @IBOutlet weak var newsDetails: UITextView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

//        
//         newsPhoto.sd_setImage(with: URL(string: details.photo), placeholderImage: UIImage(named: "3box"))
//        newsTitle.text=details.title
//        newsDetails.text=details.details
        
        
        newsPhoto.image=photo
        newsTitle.text=titlle
        newsDetails.text=detailss
        
    }

    
    
    
}
