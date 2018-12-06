//
//  ViewController.swift
//  3BOXHOST
//
//  Created by mac on 9/29/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout ,toOrder{
    
    
    
     var array:[ServiceModel]=[]
    
  
    
    
    
    func toOrderVC() {
        performSegue(withIdentifier: "toOrder", sender: self)
    }
    
    
    var globalImage = [""]
    var data:[String] = []
    @IBOutlet var collection_out: UICollectionView!
    @IBOutlet var page_out: UIPageControl!
    
    // UIPageControl COUNT
    @IBAction func page_action(_ sender: UIPageControl) {
        page_out.currentPage = array.count
    }
//
    //numberOfItemsInSection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        page_out.numberOfPages=array.count
        return array.count
    }
    
    //cellForItemAt ADD IMAGE AND DATA IN ARRAY
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionCell
       
        
        cell.set(map: array[indexPath.row])
        cell.layer.cornerRadius=5
        cell.layer.shadowColor=UIColor.white.cgColor
        cell.layer.shadowOpacity=0.5
        cell.layer.shadowOffset = .zero
        cell.layer.shadowPath=UIBezierPath(rect: cell.layer.bounds).cgPath
        cell.layer.shouldRasterize=true
            
        
        return cell
    }
    //UIScrollView INT TO COUNT
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        page_out.currentPage = Int(pageNumber)
    }

    
 
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        
        
        
        
        
        let flow=UPCarouselFlowLayout()
        flow.itemSize=CGSize(width: UIScreen.main.bounds.size.width - 30.0, height: collection_out.frame.size.height)
        flow.scrollDirection = .horizontal
        flow.sideItemScale=0.8
        flow.sideItemAlpha=1.0
        flow.spacingMode = .fixed(spacing: 5.0)
        collection_out.collectionViewLayout=flow
        
        collection_out.delegate = self
        collection_out.dataSource = self
        

        
        
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
        let url="https://www.3boxhost.com/api/services"
        
        
        
        
        
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
                                let short = dataArr ["short"].string
                                
                                
                                
                                
                                
                                let city=ServiceModel(photo: photo!, title: name!, details: short!)
                                self.array.append(city)
                            }
                            
                            self.collection_out.reloadData()
                            
                            
                            
                        }
                        
                    }
                }
        }
        
        
    }
    
  

   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "go", sender: array[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "go") {
            
            
            let destinationVC = segue.destination as! ServiceDetailsVC
            destinationVC.details = sender as! ServiceModel
            
            
        }
    }
  

}

