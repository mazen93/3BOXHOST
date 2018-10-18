//
//  stoaryCollectionView.swift
//  3BOXHOST
//
//  Created by mac on 10/5/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class stoaryCollectionView: UICollectionView,UICollectionViewDelegate,UICollectionViewDataSource {
    
    


    var array:[stoaryModel]=[]
   
    
    
    
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        self.register(StoaryCell.self, forCellWithReuseIdentifier: "StoaryCell")
        self.dataSource=self
        self.delegate=delegate
        loadData()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.dataSource=self
        self.delegate=self
        
        loadData()
    }
    
    
    func loadData()  {
        
        
        let u=stoaryModel(photo: "3box")
        
        self.array.append(u)
        
        
        let ui=stoaryModel(photo: "3box")
        self.array.append(ui)
        
        let ue=stoaryModel(photo: "3box")
        
        self.array.append(ue)
        
        
        
        let ma=stoaryModel(photo: "3box")
        self.array.append(ma)
        let uer=stoaryModel(photo: "3box")
        
        self.array.append(uer)
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return array.count
        
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "StoaryCell", for: indexPath) as! StoaryCell
        
        cell.set(map: array[indexPath.row])
        
        return cell
    }
    
   
}
