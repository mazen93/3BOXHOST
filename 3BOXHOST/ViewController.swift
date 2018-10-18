//
//  ViewController.swift
//  3BOXHOST
//
//  Created by mac on 9/29/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
   // @IBOutlet weak var menuButton: UIBarButtonItem!
    
    var globalImage = [""]
    var data:[String] = []
    @IBOutlet var collection_out: UICollectionView!
    @IBOutlet var page_out: UIPageControl!
    
    // UIPageControl COUNT
    @IBAction func page_action(_ sender: UIPageControl) {
        page_out.currentPage = globalImage.count
    }
    
    //numberOfItemsInSection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return globalImage.count
    }
    
    //cellForItemAt ADD IMAGE AND DATA IN ARRAY
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionCell
        cell.image.image = UIImage(named: globalImage[indexPath.row])
        
        let  data1 = data[indexPath.row] as String!
        cell.details.text = data1
        self.page_out.numberOfPages = globalImage.count
        return cell
    }
    //UIScrollView INT TO COUNT
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageNumber = round(scrollView.contentOffset.x / scrollView.frame.size.width)
        page_out.currentPage = Int(pageNumber)
    }

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
//        if revealViewController() != nil {
//            
//            
//            
//            menuButton.target = revealViewController()
//            menuButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
//            
////            menuButton.addTarget(self.revealViewController(), action: "revealToggle:", for: .touchUpInside)
//
//        }
        
        
        
        
        
        let flow=UPCarouselFlowLayout()
        flow.itemSize=CGSize(width: UIScreen.main.bounds.size.width - 60.0, height: collection_out.frame.size.height)
        flow.scrollDirection = .horizontal
        flow.sideItemScale=0.8
        flow.sideItemAlpha=1.0
         flow.spacingMode = .fixed(spacing: 5.0)
        collection_out.collectionViewLayout=flow
        
        collection_out.delegate = self
        collection_out.dataSource = self
        
        data = ["تمتلك شركتنا فريق على أعلى مستوى من الكفاءة الفنية في مجال تصميم وبرمجة تطبيقات الهواتف الذكية (الجوال) سواء التي تعمل بنظام الأندرويد او التي تعمل بنظام الأي أو إس، حيث نقوم بتنفيذ جميع تطبيقات الهواتف الذكية بدءً من التصميم الجذاب والعصري لتطبيق الموبايل مرورا بمرحلة البرمجة وحتى النشر في متجر التطبيقات, كما أننا نقوم بتقديم خدمات الدعم الفني الكاملة للتطبيقات التي نقوم بتصميمها وبرمجتها حتى بعد النشر على المتجر، وعمل اي تحديثات ضرورية على هذه التطبيقات، ويمكن تطوير تطبيقات الموبايل لاحقا حسب رغبة وطلب ","تمتلك شركتنا فريق على أعلى مستوى من الكفاءة الفنية في مجال تصميم وبرمجة تطبيقات الهواتف الذكية (الجوال) سواء التي تعمل بنظام الأندرويد او التي تعمل بنظام الأي أو إس، حيث نقوم بتنفيذ جميع تطبيقات الهواتف الذكية بدءً من التصميم الجذاب والعصري لتطبيق الموبايل مرورا بمرحلة البرمجة وحتى النشر في متجر التطبيقات, كما أننا نقوم بتقديم خدمات الدعم الفني الكاملة للتطبيقات التي نقوم بتصميمها وبرمجتها حتى بعد النشر على المتجر، وعمل اي تحديثات ضرورية على هذه التطبيقات، ويمكن تطوير تطبيقات الموبايل لاحقا حسب رغبة وطلب ","تمتلك شركتنا فريق على أعلى مستوى من الكفاءة الفنية في مجال تصميم وبرمجة تطبيقات الهواتف الذكية (الجوال) سواء التي تعمل بنظام الأندرويد او التي تعمل بنظام الأي أو إس، حيث نقوم بتنفيذ جميع تطبيقات الهواتف الذكية بدءً من التصميم الجذاب والعصري لتطبيق الموبايل مرورا بمرحلة البرمجة وحتى النشر في متجر التطبيقات, كما أننا نقوم بتقديم خدمات الدعم الفني الكاملة للتطبيقات التي نقوم بتصميمها وبرمجتها حتى بعد النشر على المتجر، وعمل اي تحديثات ضرورية على هذه التطبيقات، ويمكن تطوير تطبيقات الموبايل لاحقا حسب رغبة وطلب "]
        globalImage = ["3box","3box","3box"]
    }

   


}

