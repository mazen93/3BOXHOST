//
//  newsCell.swift
//  3BOXHOST
//
//  Created by mac on 10/5/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import SDWebImage
class newsCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var short: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var button: UIButton!
    var Item: newsModel!
    
    weak var delegate: MoreDelegate?
    
   
    func set(map:newsModel)  {
        
        
        let url="https://www.3boxhost.com/public/upload/posts/blog/"
        photo.sd_setImage(with: URL(string: url+map.photo), placeholderImage: UIImage(named: "3box"))
        
        
        
        title.text=map.title
        short.text=map.short
        details.text=map.details
        
        
       
    }
    @IBAction func moreTap(_ sender: Any) {
        
    
        delegate?.moreTapButton(title: title.text!, details: short.text!, photo: photo.image!, short: details.text!)
        
        
        
    }
}
protocol MoreDelegate:class {
    func moreTapButton(title:String,details:String,photo:UIImage,short:String)
}


