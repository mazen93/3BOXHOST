//
//  worksVC.swift
//  3BOXHOST
//
//  Created by mac on 10/5/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class worksVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource ,seeProject{
    func ProjectURL(url: String) {
        print("url is \(url)")
    }
    
    

    var array:[worksModel]=[]
 

    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        collection.dataSource=self
        collection.delegate=self
        loadData()
        
    }

    
    
    
    func loadData()  {
    
        
        let u=worksModel(photo:"3box", title: "adeek", url: "adeeeeeeeeek")
        
        self.array.append(u)
        
        
        let ui=worksModel(photo:"3box", title: "adeek", url: "adk")
        self.array.append(ui)
        
        let ue=worksModel(photo:"3box", title: "adeek", url: "deeeeeeeeek")
        
        self.array.append(ue)
        
        
        
        let ma=worksModel(photo:"3box", title: "adeek", url: "aeeeeeeeeek")
        self.array.append(ma)
        let uer=worksModel(photo:"3box", title: "adeek", url: "ad")
        
        self.array.append(uer)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "worksCell", for: indexPath) as! worksCell
        
        
        cell.contentView.layer.cornerRadius = 2.0
        cell.contentView.layer.borderWidth = 1.0
        cell.contentView.layer.borderColor = UIColor.clear.cgColor
        cell.contentView.layer.masksToBounds = true
        
        cell.layer.shadowColor = UIColor.black.cgColor
        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
        cell.layer.shadowRadius = 2.0
        cell.layer.shadowOpacity = 0.5
        cell.layer.masksToBounds = false
        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        cell.delegate=self
        
        cell.set(map:array[indexPath.row])
        
        
        return cell
    }


}
