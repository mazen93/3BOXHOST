//
//  StoaryCell.swift
//  3BOXHOST
//
//  Created by mac on 10/5/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import SDWebImage

class StoaryCell: UICollectionViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    
    
    
    func set(map:stoaryModel)  {
           photo.sd_setImage(with: URL(string: map.photo), placeholderImage: UIImage(named: "3box"))
    }
}
