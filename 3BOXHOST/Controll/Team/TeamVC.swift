//
//  TeamVC.swift
//  3BOXHOST
//
//  Created by mac on 10/9/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class TeamVC: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource{
//    func YTTapButton(url: String) {
//         print("url\(url)")
//    }
//
//    func InTapButton(url: String) {
//         print("url\(url)")
//    }
//
//
    
    
    
    
  
    
//    func TwTapButton(url: String) {
//        print("url\(url)")
//    }
    
    
    
    var array:[TeamsModel]=[]
    
    
    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        collection.dataSource=self
        collection.delegate=self
        loadData()
        
    }
    
    
    
    
    func loadData()  {
        
        
        let u=TeamsModel(name: "MOHAMED ELKAMASH", jop: "CEO", photo: "3box")
        
        self.array.append(u)
        
        
        let ui=TeamsModel(name: "MOHAMED FATHY", jop: "Digital Marketing Specialist", photo: "3box")
        self.array.append(ui)
        
        let ue=TeamsModel(name: "AHMED YOUSSEF", jop: "Motion Graphic Desginer", photo: "3box")
        
        self.array.append(ue)
        
        
        
        let ma=TeamsModel(name: "ESLAM GOUDA", jop: "Full Stack Developer", photo: "3box")
        self.array.append(ma)
        
        
        let uer=TeamsModel(name: "HASSAN ALI", jop: "Graphic Desginer", photo: "3box")
        
        self.array.append(uer)
        let eer=TeamsModel(name: "MOHAMED MAZIN", jop: "Mobile Application Developer", photo: "3box")
        
        self.array.append(eer)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "TeamCell", for: indexPath) as! TeamCell
        
//        
//        cell.contentView.layer.cornerRadius = 2.0
//        cell.contentView.layer.borderWidth = 1.0
//        cell.contentView.layer.borderColor = UIColor.clear.cgColor
//        cell.contentView.layer.masksToBounds = true
//        
//        cell.layer.shadowColor = UIColor.black.cgColor
//        cell.layer.shadowOffset = CGSize(width: 0, height: 2.0)
//        cell.layer.shadowRadius = 2.0
//        cell.layer.shadowOpacity = 0.5
//        cell.layer.masksToBounds = false
//        cell.layer.shadowPath = UIBezierPath(roundedRect: cell.bounds, cornerRadius: cell.contentView.layer.cornerRadius).cgPath
        
        
        cell.set(map:array[indexPath.row])
        
        
        return cell
    }
    
    
}
