//
//  CollectionCell.swift
//  3BOXHOST
//
//  Created by mac on 9/29/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import SDWebImage
class CollectionCell: UICollectionViewCell {
    
    
    
    
    var delegate:toOrder?
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var details: UILabel!
    @IBOutlet weak var orderButton: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
//        DispatchQueue.main.async {
//            <#code#>
//        }
        
    }
    
    
    
    
    @IBAction func orderButton(_ sender: UIButton) {
        
        
        delegate?.toOrderVC()
    }
    
    
    
    func set(map:ServiceModel
        )  {
        
        image.sd_setImage(with: URL(string: map.photo), placeholderImage: UIImage(named: "3box"))
        
        title.text=map.title
        details.text=map.details
        
        
        
        
    }
    
}
protocol toOrder {
    func toOrderVC()
    
}

