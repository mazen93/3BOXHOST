//
//  NewsVC.swift
//  3BOXHOST
//
//  Created by mac on 10/5/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class NewsVC: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,MoreDelegate {
    var name:String!
   
 
    var pageNo:Int=1
    var limit:Int=15
    var totalPages:Int=1 //pageNo*limit
    var totalItems:Int=1
    
    
    var array:[newsModel]=[]
    
    
    @IBOutlet weak var collection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        collection.dataSource=self
        collection.delegate=self
        loadData(pageNumber:pageNo)
        
    }
    
    
    
    func alertAction(title:String,message:String)  {
        
        // create the alert
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        
        let ok=NSLocalizedString("OK", comment: "OK")
        
        let okAction = UIAlertAction(title: ok, style: UIAlertAction.Style.default) {
            UIAlertAction in
            NSLog("OK Pressed")
        }
        // add an action (button)
        alert.addAction(okAction)
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    func loadData(pageNumber:Int)  {
        let url="https://www.3boxhost.com/api/blog?page=\(pageNumber)"
        let lang=Bundle.main.preferredLocalizations.first!
        
        let headers = [
            
            "language":lang
        ]
        
        
        Alamofire.request(url, method: .get, encoding: URLEncoding.default, headers: headers)
            .responseJSON {
                
                response in
                
                switch response.result
                {
                case .failure(let error):
                    
                    print(error)
              
                case .success(let value):
                   
                    
                    
                    let json = JSON(value)
                 print(json)
                    
                    
                    let status=json["status"].bool
                    print("status \(status!)")
                    
                    if status == false{
                        
                        
                        let tiitle=NSLocalizedString("sorry", comment: "sorry")
                        let message=NSLocalizedString("sorry there is no data ", comment: "no data")
                        self.alertAction(title: tiitle, message: message)
                        
                        
                        
                    }else{
                        let total_pages=json["posts"]["last_page"].int
                        let current_page=json["posts"]["current_page"].int
                        let total_items=json["posts"]["total"].int
                        
                        
                        
                        
                        
                        
                        self.totalPages=total_pages!
                        self.pageNo=current_page!
                        self.totalItems=total_items!
                        
                        
                        if let dataArrr = json["posts"]["data"].array
                        {
                            for dataArr in dataArrr {
                                
                                let name = dataArr ["name"].string
                                let photo = dataArr ["upload"].string
                                let short = dataArr ["short"].string
                                
                                let details = dataArr ["details"].string
                                
                                
                                
                                let city=newsModel(photo: photo!, title: name!, details: details!, short: short!)
                                self.array.append(city)
                            }
                            
                            self.collection.reloadData()
                        }
                        
                        
                    }
                    
                    
                    
                }
                
                
                
                
                
                
                
                
                
        }
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
  
  
    
    
    func moreTapButton(title: String, details: String, photo: UIImage,short:String) {
        
        
        
        
   
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
    
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        if indexPath.row == array.count - 1 { //
            print("will Display Cell Call \(array.count-1)  and index = \(indexPath.row)")
            print("total items = \(totalItems)")
            print("total pages = \(totalPages)")
            print("current page = \(pageNo)")
            
            if array.count < totalItems && pageNo < totalPages {
                pageNo += 1
                loadData(pageNumber: pageNo)
            }
        }
    }
    
    
}
