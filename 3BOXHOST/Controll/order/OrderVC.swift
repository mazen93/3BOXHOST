//
//  OrderVC.swift
//  3BOXHOST
//
//  Created by mac on 10/6/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit

class OrderVC: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var moreDetails: UITextField!
    @IBOutlet weak var typeOfService: UITextField!
    @IBOutlet weak var companyName: UITextField!
    @IBOutlet weak var phone: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var clientName: UITextField!
   
    var activetextfeildLogin : UITextField!
    var activetextfeild : UITextField!
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    
    
    //Hide KeyBoard Func
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    // return KeyBoard
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        email.resignFirstResponder()
       /// passwordTF.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        activetextfeild = textField
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        
      //  NotificationCenter.default.addObserver(self, selector: #selector(OrderVC.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
      //  NotificationCenter.default.addObserver(self, selector: #selector(OrderVC.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
      
        
        
        let tap=UITapGestureRecognizer(target: self, action: #selector(didTapView(gesture:)))
        view.addGestureRecognizer(tap)
    }

    @objc func didTapView(gesture:UITapGestureRecognizer)  {
        view.endEditing(true)
    }
    
    
    func addObservice()  {
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardWillShow, object: nil, queue: nil) { (notification) in
            self.keyboardWillShow(notification: notification as NSNotification)
        }
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardWillHide, object: nil, queue: nil) { (notification) in
            self.keyboardWillHide(notification: notification as NSNotification)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addObservice()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        removeObserve()
    }
    
    @IBAction func sendButton(_ sender: Any) {
        
        
    }
    
    
    func removeObserve()  {
        NotificationCenter.default.removeObserver(self)
    }
    
    
   
    
   func keyboardWillShow(notification: NSNotification) {
    guard let userInfo=notification.userInfo,
        let frame=(userInfo[UIKeyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
            return
    }
    let content=UIEdgeInsets(top: 0, left: 0, bottom: (frame.height), right: 0)
    scrollView.contentInset=content
    }
    
     func keyboardWillHide(notification: NSNotification) {
       scrollView.contentInset=UIEdgeInsets.zero
    }
    
    
    
}
