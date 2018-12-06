//
//  worksVC.swift
//  3BOXHOST
//
//  Created by mac on 10/5/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class worksVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout,seeProject{
    

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width - 20) / 2.0
        return CGSize(width: width, height: width)
    }
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

        self.title=NSLocalizedString("PORTFOLIO", comment: "PORTFOLIO")

        collection.dataSource=self
        collection.delegate=self
        loadData()
        
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
    
    func loadData()  {
        
        
     
        let lang=Bundle.main.preferredLocalizations.first!
        let url="https://www.3boxhost.com/api/portfolio"
        
        
       
        
        
        let headers = [
            
            "language":lang
        ]
        
        
        Alamofire.request(url, method: .get, encoding: URLEncoding.default, headers: headers)
            .responseJSON {
                
                response in
                //self.activityIndicator.stopAnimating()
                switch response.result
                {
                case .failure(let error):
                    
                    print(error)
                //    self.refresh.stopAnimating()
                case .success(let value):
                    // self.refresh.stopAnimating()
                    let json = JSON(value)
                    // print(json)
                    
                    
                    
                    let status=json["sucess"].bool
                    print("status \(status!)")
                    
                    if status == false{
                        
                        
                        let tiitle=NSLocalizedString("sorry", comment: "sorry")
                        let message=NSLocalizedString("sorry there is no data ", comment: "no data")
                        self.alertAction(title: tiitle, message: message)
                        
                        
                        
                    }else{
                    
                    
                    
                    if let dataArrr = json["data"].array
                    {
                        
                        
                        
                            
                            
                            
                            for dataArr in dataArrr {
                               
                                let name = dataArr ["name"].string
                                let photo = dataArr ["photo"].string
                                let link = dataArr ["link"].string
                                
                                
                                
                                
                                
                                let city=worksModel(photo: photo!, url: link!, name: name!)
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
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let url=array[indexPath.row].url
        print("url is \(url!)")
        let fbURL=URL(string: url!)
        
        if (UIApplication.shared.canOpenURL(fbURL!)){
            //FB INSTALL
            UIApplication.shared.open(fbURL!)
        }else{
            UIApplication.shared.canOpenURL(fbURL!)
            
        }
        
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell=collectionView.dequeueReusableCell(withReuseIdentifier: "worksCell", for: indexPath) as! worksCell
        
        
        cell.contentView.layer.cornerRadius = 10.0
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
