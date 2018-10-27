//
//  NewsVC.swift
//  3BOXHOST
//
//  Created by mac on 10/5/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class NewsVC: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,MoreDelegate {
    var name:String!
   
    
   
   
    
    let details="أصدرت شركة جوجل تطبيق Google Tez  في دولة الهند وهو يعمل على نظام تشغيل الأندرويد، ونظام  تشغيل IOS، كما أنه يتيح لمستخدمي هذا التطبيق  دفع النقود مباشرةً إلى الحسابات، مما يلغي نظام التعامل بالمحافظ التقليدية، كما  أنه يدعم العديد من اللغات الإنجليزية، المهاراتية، الغوجاراتية، الكانادا، التاميلية، التيلجو، البنغالية، الهندية"
    var array:[newsModel]=[]
    
    
    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        collection.dataSource=self
        collection.delegate=self
        loadData()
        
    }
    
    
    
    
    func loadData()  {
        
        
        let u=newsModel(photo:"https://3boxhost.com/public/upload/posts/blog/1124_630_1514650696_%D9%85%D8%A7_%D9%85%D8%B9%D9%86%D9%89_%D8%AC%D9%88%D8%AC%D9%84.jpg", title: "9 Great Apps Launched by Google in 2017 .. Know It",details: details)
        
        self.array.append(u)
        
        
        let ui=newsModel(photo:"https://3boxhost.com/public/upload/posts/blog/1124_630_1514650696_%D9%85%D8%A7_%D9%85%D8%B9%D9%86%D9%89_%D8%AC%D9%88%D8%AC%D9%84.jpg", title: "9 أطلقتها جوجل في عام ٢٠١٧.. تعرف عليها",details: details)
        self.array.append(ui)
        
        let ue=newsModel(photo:"https://3boxhost.com/public/upload/posts/blog/1124_630_1514650696_%D9%85%D8%A7_%D9%85%D8%B9%D9%86%D9%89_%D8%AC%D9%88%D8%AC%D9%84.jpg", title: "9 تطبيقات رائعة أطلقتها جوجل في عام  تعرف عليها",details: details)
        
        self.array.append(ue)
        
        
        
        let ma=newsModel(photo:"https://3boxhost.com/public/upload/posts/blog/1124_630_1514650696_%D9%85%D8%A7_%D9%85%D8%B9%D9%86%D9%89_%D8%AC%D9%88%D8%AC%D9%84.jpg", title: "9 تطبيقات رائعة أطلقتها جوجل في عام ٢٠١٧.. تعرف ",details: details)
        self.array.append(ma)
        let uer=newsModel(photo:"3box", title: "9 تطبيقات رائعة أطلقتها جوجل في عام ٢٠١٧.. تعرف عليها",details: details)
        
        self.array.append(uer)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "newsCell", for: indexPath) as! newsCell
        
        
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
        
        cell.set(map:array[indexPath.row])
        
      //  cell.button.target(forAction:  #, withSender: indexPath.row)
        
        
    
       cell.delegate=self
        return cell
        
        
        
        
       
    }
  
  
    
    
    func moreTapButton(title: String, details: String, photo: UIImage) {
        
        
        
        
        print(details)
        print(title)
        let vc = storyboard?.instantiateViewController(withIdentifier: "NewsDetailsVC") as? NewsDetailsVC
        
        vc?.detailss=details
        vc?.titlle=title
        vc?.photo=photo
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
    
    
//    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        
//        
//        
//        
//        let vc = storyboard?.instantiateViewController(withIdentifier: "NewsDetailsVC") as? NewsDetailsVC
//        vc?.details=array[indexPath.row]
//        
//        
//        self.navigationController?.pushViewController(vc!, animated: true)
//        
//    }
    
    
}
