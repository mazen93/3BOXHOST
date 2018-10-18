//
//  TeamCell.swift
//  3BOXHOST
//
//  Created by mac on 10/9/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import SDWebImage

class TeamCell: UICollectionViewCell {
  
    @IBOutlet weak var position: UILabel!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var photo: UIImageView!
    
    
    
  
    
    
//    @IBAction func twitterButton(_ sender: Any) {
//        delegate?.TwTapButton(url: twURL.text!)
//    }
//    
    
    
//
//    @IBAction func youtubeButton(_ sender: Any) {
//        delegate?.YTTapButton(url: twURL.text!)
//    }
//
//    @IBAction func iinstaButton(_ sender: Any) {
//        delegate?.InTapButton(url: twURL.text!)
//    }
//
    
    
    
    func set(map:TeamsModel)  {
        
        photo.sd_setImage(with: URL(string: map.photo), placeholderImage: UIImage(named: "3box"))
        name.text=map.name
        position.text=map.jop
    
    }
    
    
}


