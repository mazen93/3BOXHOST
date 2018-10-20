//
//  PrivacyStatement.swift
//  3BOXHOST
//
//  Created by mac on 10/8/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit
import WebKit

class PrivacyStatement: UIViewController,WKNavigationDelegate {
    
    
    
    
    @IBOutlet weak var refresh: UIActivityIndicatorView!
    //MARK:- Outlet
    @IBOutlet weak var mywebview: WKWebView!
    var activityIndicator:UIActivityIndicatorView=UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        BackgroundProcess()
        //self.loadWebView()
        
        setupView()
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        UIApplication.shared.statusBarStyle = .lightContent
    }
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return .lightContent
    }
    
    func setupView()  {
        self.navigationItem.title="اتصل بنا"
        //        self.navigationItem.backBarButtonItem=UIBarButtonItem(title: " ", style: .plain, target: nil, action: nil)
        //        self.navigationController?.navigationBar.tintColor=UIColor.white
    }
    func BackgroundProcess()  {
        DispatchQueue.global(qos: .background).async {
            //background code
            DispatchQueue.main.async {
                //  self.activityIndicatorCall()
                self.loadWebView()
            }
        }
    }
    func loadWebView(){
        
        
        
        
        
        
        let url = URL(string:  "https://www.3boxhost.com/privacy_statment")
        
        mywebview.load(URLRequest(url: url!))
        mywebview.navigationDelegate = self
        
    }
    func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
        self.refresh.startAnimating()
    }
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        
        
        self.refresh.stopAnimating()
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        self.refresh.stopAnimating()
        // create the alert
        let alert = UIAlertController(title: "خطا", message: error.localizedDescription, preferredStyle: UIAlertController.Style.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "حسنا", style: UIAlertAction.Style.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
}
