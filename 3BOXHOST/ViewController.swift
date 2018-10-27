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
    
     let detailsWebsite="Designing a website is no longer optional. The main strength of any business or service is to have a website.Web sites are no longer used solely to explain their products or services, but they are now playing a pivotal role. In any marketing policy you pursue, you must have a website to start implementing your marketing plan.We work hard from the very first moment to start designing a site to crystallize the ideas of our customers with the utmost precision in order to reach the best result possible, so that we work through a system based on the foundation of modern ideas and coping with everything that is new and modern, to get the best design of the Internet site Conflicts with the spirit of work required, which requires that the designer be highly imaginative, creative and creative"
    
    
    
    let detailsMob="Our company has a team of the highest level of technical competence in the design and programming of applications of smart phones (mobile) whether running on Android or OSOS, where we implement all applications of smart phones from the attractive design and modern mobile application through the programming stage and even We also provide full technical support services for applications that we design and implement even after publishing to the store, making any necessary updates to these applications, and developing mobile applications later as desired and requested by the customer.Developing smart phone applicationsSmartphone applications are the most important means of communication with customers at all, because it has become difficult to find someone who does not have a smartphone, whether this phone is running Android or iPhone phone OSOS, and every day sales of smart phones around the world.Every company is primarily interested in being in constant contact with its customers, whether current or potential, it must keep pace with the modern age to have a mobile application can be installed easily and easily on the phones of customers, and thus have a great tool to communicate with them and display their products and services constantly."
    
    
    let tradeMark="The identity of the company is the distinctive personality of the company and includes the logo and colors and all that expresses the company and its products or services so that the public can identify the company by seeing this distinctive identity which should appeal to the target audience through this company The identity of the company is the distinctive personality of the company and includes the logo and colors and everything that crosses The company and its products or services so that the public can identify the company once the vision of this distinctive identity, which should appeal to the target audience through this company Visual identity and brand We design corporate identity and logo as a premium package for our valued customers.                                                      First: the logo                                                           The logo is the distinctive brand of any company in the world and must express the company and its services or its main products as soon as it is considered by assigning the shapes and colors of these products or services. The logo is the basis of the company's identity and the first and main element, The identity that we address next.Second: the personal card It is important that your employees who deal directly with the target audience of the company or potential customers have personal cards including the company logo, the name of the employee, the job and ways of communicating with this employee to facilitate and facilitate the execution of the business with the public or customers directly and to ensure the continuous presence of the important address book Customers for time of need. Third: Letters of correspondence All companies worldwide have their own A4 correspondence sheets used in formal correspondence between them and other companies or between them and their customers or even between them and their employees within the company. Correspondence papers must include the company logo, contact data and design as a whole inspired by the colors The company's logo, which we have already referred to as the key element of the company's identity design.Fourth: Company envelopesLast but not least, the design of the company envelopes used in official correspondence between them and customers or other companies in order to save the correspondence papers, as well as the address of the company with its customers or companies dealing with them. The envelopes must contain basic elements such as the notice and communication data, Company and its customers."
    
    
    
    
    let adv="The importance of designing a professional video for your company or product is that most of the visitors to the Internet prefer to see the visual ad for reading a lot in the Internet. Therefore, through our professional team we design professional video may not exceed 120 seconds in the presentation of the most important ideas that serve the marketing process without feeling bored and at the same time leave a fingerprint or impression of the viewer in the name of your company or product Design of advertising videos Therefore, every owner of a company, organization or producer or project owner must have a strong video presentation (Video Productio) that shows your activity, experiences and previous work, for example. Where this video can be posted on the sites of Facebook and Twitter and succession and also YouTube. You can also view the video through TV screens or monitors available in different possibilities such as commercial malls and the like.If you think that you are publishing your video or advertising on TV, you will be surprised by the cost of reaching a high rate of 30 million viewers in Egypt, although you can achieve this number of times much less than the cost of advertising your video on the Internet, Internet users per day"
    
    
    let marketing="E-marketing is one of the most important tools of advertising and promotion of services and products because it is characterized by ensuring access to the largest possible number of target audience and predetermined in terms of age group or gender or even within a specific geographical area, which reflects positively and significantly and effectively to increase the volume of dealing on your products and servicesE-marketing services E-marketing can be defined simply as the use of the Internet to promote or advertise your products or services in order to reach a specific category of customers who provide these services and products to them. E-marketing is the most effective and least expensive tool compared to traditional advertising methods. For example, when you have an advertising campaign on Google for a continuous month it will cost you about 1% of the cost of implementing the same campaign but through newspapers and magazines or even radio and television as well as your arrival To the largest possible number of customers interested in your products or services, which reflects positively on your sales volume. One of the most important features of e-marketing is your full control over how the advertisement, its form and the time it appears in order to make the best use of the advertising campaign directed to your target customers and give you full assurance that you will not pay your money without the revenue you expect from this advertising campaign."
    
    let dominn="Each business system has its own hosting needs. We offer a wide and flexible range of inexpensive hosting plans and competition for many service providers in terms of features, efficiency and most important in terms of confidentiality, safety and continuous technical support throughout the week. Our web hosting is tailored to meet the needs of the sites we build.Web Hosting In addition to the advanced services offered by «Three Box Host» offers a package of reliable and affordable prices for hosting sites. Our web hosting solutions are scalable and give you an excellent operating period. So, if you are looking for the best company to design and web hosting do not go away, we are quicker to serve our customers and meet their requirements."
    
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
        // Do any additional setup after loading the view, typically from a nib.
        
        

        
        
        
        
        
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
    
    
    func loadData()  {
        
        
        let u=ServiceModel(photo:"https://3boxhost.com/public/upload/posts/services/718_430_1503855161_3.png", title: "Website Development",details: detailsWebsite)
        
        self.array.append(u)
        
        
        let ui=ServiceModel(photo:"https://3boxhost.com/public/upload/posts/services/718_430_1503855307_4.png", title:  "Mobile Application Development",details: detailsMob)
        self.array.append(ui)
        
        let ue=ServiceModel(photo:"https://3boxhost.com/public/upload/posts/services/718_430_1503855203_2.png", title:  "Visual identity and brand",details: tradeMark)
        
        self.array.append(ue)
        
        
        
        let ma=ServiceModel(photo:"https://3boxhost.com/public/upload/posts/services/718_430_1503855231_1.png", title: "Design of advertising videos",details: adv)
        self.array.append(ma)
        
        let uer=ServiceModel(photo:"https://3boxhost.com/public/upload/posts/services/718_430_1503855281_5.png", title:  "E-marketing services",details: marketing)
        
        self.array.append(uer)
        let domin=ServiceModel(photo:"https://3boxhost.com/public/upload/posts/services/718_430_1503855254_6.png", title:  "Web Hosting",details: dominn)
        
        self.array.append(domin)
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

