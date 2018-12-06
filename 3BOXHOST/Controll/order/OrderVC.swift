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
       // email.resignFirstResponder()
      // email
       /// passwordTF.resignFirstResponder()
        
        //return true
        
        
        self.view.endEditing(true)
        return false
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        activetextfeild = textField
    }
    override func viewDidLoad() {
        super.viewDidLoad()


        
        
        self.title=NSLocalizedString("REQUEST SERVICE", comment: "REQUEST SERVICE")
        
      //  NotificationCenter.default.addObserver(self, selector: #selector(OrderVC.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
      //  NotificationCenter.default.addObserver(self, selector: #selector(OrderVC.keyboardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
      
        email.delegate=self
        moreDetails.delegate=self
        companyName.delegate=self
        clientName.delegate=self
        typeOfService.delegate=self
        
        let tap=UITapGestureRecognizer(target: self, action: #selector(didTapView(gesture:)))
        view.addGestureRecognizer(tap)
    }

    @objc func didTapView(gesture:UITapGestureRecognizer)  {
        view.endEditing(true)
    }
    
    
    func addObservice()  {
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: nil) { (notification) in
            self.keyboardWillShow(notification: notification as NSNotification)
        }
        NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: nil) { (notification) in
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
        
        guard !email.text!.isEmpty  else {
            return
        }
        guard  !phone.text!.isEmpty  else {
            return
        }
        
        let providerEmailAdress = email.text
        
        let  isemailAddresValid = isValidEmailAddress(emailAddressString: providerEmailAdress!)
        
        if isemailAddresValid
        {
            print("Email is valid")
            
             print("not Empty")
            
            let name=clientName.text!
            let details=moreDetails.text!
            let emaiil=email.text!
            let number=phone.text!
            let service=typeOfService.text!
            let company=companyName.text!
            
            
            
            
           
            let post = [
                        "name": name,
                        "details": details,
                        "email": emaiil,
                        "phone": number,
                        "companyName":company,
                        "service":service
           
            ]
            
           
            
            
            
            
            
        } else {
            print("Email is not valid")
            //displayAlertmessage(messagetodisplay: "Email is not valid")
        }
        
        
       
        
        
        
    }
    
    
    func removeObserve()  {
        NotificationCenter.default.removeObserver(self)
    }
    
    
   
    
   func keyboardWillShow(notification: NSNotification) {
    guard let userInfo=notification.userInfo,
        let frame=(userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {
            return
    }
    let content=UIEdgeInsets(top: 0, left: 0, bottom: (frame.height), right: 0)
    scrollView.contentInset=content
    }
    
     func keyboardWillHide(notification: NSNotification) {
       scrollView.contentInset=UIEdgeInsets.zero
    }
    func isValidEmailAddress(emailAddressString: String) -> Bool {
        
        var returnValue = true
        let emailRegEx = "[A-Z0-9a-z.-_]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,3}"
        
        do {
            let regex = try NSRegularExpression(pattern: emailRegEx)
            let nsString = emailAddressString as NSString
            let results = regex.matches(in: emailAddressString, range: NSRange(location: 0, length: nsString.length))
            
            if results.count == 0
            {
                returnValue = false
            }
            
        } catch let error as NSError {
            print("invalid regex: \(error.localizedDescription)")
            returnValue = false
        }
        
        return  returnValue
    }
    
    
}
