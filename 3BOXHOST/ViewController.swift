//
//  ViewController.swift
//  3BOXHOST
//
//  Created by mac on 9/29/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit


class ViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout ,toOrder{
    
    
    
     var array:[ServiceModel]=[]
    
     let details="أصدرت شركة جوجل تطبيقتمتلك شركتنا فريق على أعلى مستوى من الكفاءة الفنية في مجال تصميم وبرمجة تطبيقات الهواتف الذكية (الجوال) سواء التي تعمل بنظام الأندرويد او التي تعمل بنظام الأي أو إس، حيث نقوم بتنفيذ جميع تطبيقات الهواتف الذكية بدءً من التصميم الجذاب والعصري لتطبيق الموبايل مرورا بمرحلة البرمجة وحتى النشر في متجر التطبيقات, كما أننا نقوم بتقديم خدمات الدعم الفني الكاملة للتطبيقات التي نقوم بتصميمها وبرمجتها حتى بعد النشر على المتجر، وعمل اي تحديثات ضرورية على هذه التطبيقات، ويمكن تطوير تطبيقات الموبايل لاحقا حسب رغبة وطلتمتلك شركتنا فريق على أعلى مستوى من الكفاءة الفنية في مجال تصميم وبرمجة تطبيقات الهواتف الذكية (الجوال) سواء التي تعمل بنظام الأندرويد او التي تعمل بنظام الأي أو إس، حيث نقوم بتنفيذ جميع تطبيقات الهواتف الذكية بدءً من التصميم الجذاب والعصري لتطبيق الموبايل مرورا بمرحلة البرمجة وحتى النشر في متجر التطبيقات, كما أننا نقوم بتقديم خدمات الدعم الفني الكاملة للتطبيقات التي نقوم بتصميمها وبرمجتها حتى بعد النشر على المتجر، وعمل اي تحديثات ضرورية على هذه التطبيقات، ويمكن تطوير تطبيقات الموبايل لاحقا حسب رغبة وطلب,تمتلك شركتنا فريق على أعلى مستوى من الكفاءة الفنية في مجال تصميم وبرمجة تطبيقات الهواتف الذكية (الجوال) سواء التي تعمل بنظام الأدرويد او التي تعمل بنظام الأي أو إس، حيث نقوم بتنفيذ جميع تطبيقات الهواتف الذكية بدءً من التصميم الجذاب والعصري لتطبيق الموبايل مرورا بمرحلة البرمجة وحتى النشر في متجر التطبيقات, كما أننا نقوم بتقديم خدمات الدعم الفني الكاملة للتطبيقات التي نقوم بتصميمها وبرمجتها حتى بعد النشر على المتجر، وعمل اي تحديثات ضرورية على هذه التاميلية، التيلجو، البنغالية، الهندية"
    
    
    func toOrderVC() {
        performSegue(withIdentifier: "toOrder", sender: self)
    }
    
    
   // @IBOutlet weak var menuButton: UIBarButtonItem!
    
    var globalImage = [""]
    var data:[String] = []
    @IBOutlet var collection_out: UICollectionView!
    @IBOutlet var page_out: UIPageControl!
    
    // UIPageControl COUNT
    @IBAction func page_action(_ sender: UIPageControl) {
        page_out.currentPage = array.count
    }
    
    //numberOfItemsInSection
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
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
        // Do any additional setup after loading the view, typically from a nib.
        
        
//        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
//        navigationController?.navigationBar.shadowImage = UIImage()
        
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
        
//        data = ["تمتلك شركتنا فريق على أعلى مستوى من الكفاءة الفنية في مجال تصميم وبرمجة تطبيقات الهواتف الذكية (الجوال) سواء التي تعمل بنظام الأندرويد او التي تعمل بنظام الأي أو إس، حيث نقوم بتنفيذ جميع تطبيقات الهواتف الذكية بدءً من التصميم الجذاب والعصري لتطبيق الموبايل مرورا بمرحلة البرمجة وحتى النشر في متجر التطبيقات, كما أننا نقوم بتقديم خدمات الدعم الفني الكاملة للتطبيقات التي نقوم بتصميمها وبرمجتها حتى بعد النشر على المتجر، وعمل اي تحديثات ضرورية على هذه التطبيقات، ويمكن تطوير تطبيقات الموبايل لاحقا حسب رغبة وطلب ","تمتلك شركتنا فريق على أعلى مستوى من الكفاءة الفنية في مجال تصميم وبرمجة تطبيقات الهواتف الذكية (الجوال) سواء التي تعمل بنظام الأندرويد او التي تعمل بنظام الأي أو إس، حيث نقوم بتنفيذ جميع تطبيقات الهواتف الذكية بدءً من التصميم الجذاب والعصري لتطبيق الموبايل مرورا بمرحلة البرمجة وحتى النشر في متجر التطبيقات, كما أننا نقوم بتقديم خدمات الدعم الفني الكاملة للتطبيقات التي نقوم بتصميمها وبرمجتها حتى بعد النشر على المتجر، وعمل اي تحديثات ضرورية على هذه التطبيقات، ويمكن تطوير تطبيقات الموبايل لاحقا حسب رغبة وطلب ","تمتلك شركتنا فريق على أعلى مستوى من الكفاءة الفنية في مجال تصميم وبرمجة تطبيقات الهواتف الذكية (الجوال) سواء التي تعمل بنظام الأندرويد او التي تعمل بنظام الأي أو إس، حيث نقوم بتنفيذ جميع تطبيقات الهواتف الذكية بدءً من التصميم الجذاب والعصري لتطبيق الموبايل مرورا بمرحلة البرمجة وحتى النشر في متجر التطبيقات, كما أننا نقوم بتقديم خدمات الدعم الفني الكاملة للتطبيقات التي نقوم بتصميمها وبرمجتها حتى بعد النشر على المتجر، وعمل اي تحديثات ضرورية على هذه التطبيقات، ويمكن تطوير تطبيقات الموبايل لاحقا حسب رغبة وطلب "]
//        globalImage = ["3box","3box","3box"]
        
        
        loadData()
        
        
        
    }
    
    
    func loadData()  {
        
        
        let u=ServiceModel(photo:"https://3boxhost.com/public/upload/posts/blog/1124_630_1514650696_%D9%85%D8%A7_%D9%85%D8%B9%D9%86%D9%89_%D8%AC%D9%88%D8%AC%D9%84.jpg", title: "9 تطبيقات رائعة أطلقتها جوجل في عام ٢٠١٧.. تعرف عليها",details: details)
        
        self.array.append(u)
        
        
        let ui=ServiceModel(photo:"https://3boxhost.com/public/upload/posts/blog/1124_630_1514650696_%D9%85%D8%A7_%D9%85%D8%B9%D9%86%D9%89_%D8%AC%D9%88%D8%AC%D9%84.jpg", title: "9 أطلقتها جوجل في عام ٢٠١٧.. تعرف عليها",details: details)
        self.array.append(ui)
        
        let ue=ServiceModel(photo:"https://3boxhost.com/public/upload/posts/blog/1124_630_1514650696_%D9%85%D8%A7_%D9%85%D8%B9%D9%86%D9%89_%D8%AC%D9%88%D8%AC%D9%84.jpg", title: "9 تطبيقات رائعة أطلقتها جوجل في عام  تعرف عليها",details: details)
        
        self.array.append(ue)
        
        
        
        let ma=ServiceModel(photo:"https://3boxhost.com/public/upload/posts/blog/1124_630_1514650696_%D9%85%D8%A7_%D9%85%D8%B9%D9%86%D9%89_%D8%AC%D9%88%D8%AC%D9%84.jpg", title: "9 تطبيقات رائعة أطلقتها جوجل في عام ٢٠١٧.. تعرف ",details: details)
        self.array.append(ma)
        let uer=ServiceModel(photo:"3box", title: "9 تطبيقات رائعة أطلقتها جوجل في عام ٢٠١٧.. تعرف عليها",details: details)
        
        self.array.append(uer)
    }

   
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        let vc = storyboard?.instantiateViewController(withIdentifier: "ServiceDetailsVC") as? ServiceDetailsVC
//
////        vc?.detailss=array
////        vc?.titlle=title
////        vc?.photo=photo
//        vc.details=
//        self.navigationController?.pushViewController(vc!, animated: true)




        performSegue(withIdentifier: "go", sender: array[indexPath.row])
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "go") {
            
            
            let destinationVC = segue.destination as! ServiceDetailsVC
            
            //   ApartmentsVC.delete(self)
            //  destinationVC.delegat=self as! sendApartmentData
            destinationVC.details = sender as! ServiceModel
            
            
        }
    }
    

}

