//
//  worksCell.swift
//  3BOXHOST
//
//  Created by mac on 10/5/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import SDWebImage



class worksCell: UICollectionViewCell {
    var delegate:seeProject?
   
    @IBOutlet weak var photo: UIImageView!
   
    
    @IBOutlet weak var urlLabel: UILabel!
    
    func set(map:worksModel)  {
     
        photo.sd_setImage(with: URL(string: map.photo), placeholderImage: UIImage(named: "3box"))
        urlLabel.text=map.url
       // title.text=map.title
        
    }
    
    @IBAction func seeProjectButton(_ sender: UIButton) {
        delegate?.ProjectURL(url: urlLabel.text!)
    }
}

protocol seeProject {
    func ProjectURL(url:String)
}
