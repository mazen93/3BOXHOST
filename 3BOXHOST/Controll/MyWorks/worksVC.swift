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
        let fbURL=URL(string: url)
        
        if (UIApplication.shared.canOpenURL(fbURL!)){
            //FB INSTALL
            UIApplication.shared.open(fbURL!)
        }else{
            UIApplication.shared.canOpenURL(fbURL!)
            
        }
        
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
    
        
        
        let mdars=worksModel(photo:"mdars", url: "https://www.behance.net/gallery/70037291/_")
        
        self.array.append(mdars)
        
        let asyoti=worksModel(photo:"mdars", url: "https://www.behance.net/gallery/69997545/-2018")
        
        self.array.append(asyoti)
        
        let zahra=worksModel(photo:"quran", url: "https://www.behance.net/gallery/70001253/Zahrat-Al-rawdah-Pharmacies")
        
        self.array.append(zahra)
        
        let farm=worksModel(photo:"quran", url: "https://www.behance.net/gallery/69997165/DoxPharma")
        
        self.array.append(farm)
        
        
        
        

        let u=worksModel(photo:"quran", url: "https://www.behance.net/gallery/71573627/_")
        
        self.array.append(u)
        
        
        let ui=worksModel(photo:"egy",  url: "https://www.behance.net/gallery/71573953/EGYTOWN")
        self.array.append(ui)
        
        let ue=worksModel(photo:"techno",  url: "https://www.behance.net/gallery/71574149/_")
        
        self.array.append(ue)
        
        
        
        let ma=worksModel(photo:"bond",  url: "https://www.behance.net/gallery/71573291/_")
        self.array.append(ma)
        let uer=worksModel(photo:"food", url: "https://www.behance.net/gallery/71573773/Hot-food")
        
        self.array.append(uer)
        let r=worksModel(photo:"windos", url: "https://www.behance.net/gallery/71574279/_")
        
        self.array.append(r)
        
        let new=worksModel(photo:"new", url: "https://www.behance.net/gallery/71573437/_")
        
        self.array.append(new)
        let areen=worksModel(photo:"areen", url: "https://www.behance.net/gallery/71574009/_")
        
        self.array.append(areen)
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
