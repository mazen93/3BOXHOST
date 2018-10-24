//
//  HomeVC.swift
//  3BOXHOST
//
//  Created by mac on 10/19/18.
//  Copyright © 2018 mac. All rights reserved.
//

import UIKit


class HomeVC: UIViewController {

 

 
    
    @IBOutlet weak var about: UIImageView!
    @IBOutlet weak var service: UIImageView!
    @IBOutlet weak var works: UIImageView!
    @IBOutlet weak var team: UIImageView!
    @IBOutlet weak var makeOrder: UIImageView!
    @IBOutlet weak var news: UIImageView!
    @IBOutlet weak var terms: UIImageView!
    @IBOutlet weak var privacy: UIImageView!
    @IBOutlet weak var callus: UIImageView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ImageClickabe()
        
    }
    
    
    func ImageClickabe() {
        
        
        // CallUs
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(HomeVC.callusimageTapped(gesture:)))
        
        callus.addGestureRecognizer(tapGesture)
        callus.isUserInteractionEnabled = true
        
        // service
        let taGesture = UITapGestureRecognizer(target: self, action: #selector(HomeVC.serviceimageTapped(gesture:)))
        
        service.addGestureRecognizer(taGesture)
        service.isUserInteractionEnabled = true
        
        
        
        // works
        let tGesture = UITapGestureRecognizer(target: self, action: #selector(HomeVC.workimageTapped(gesture:)))
        
        works.addGestureRecognizer(tGesture)
        works.isUserInteractionEnabled = true
        
        // team
        let taGestur = UITapGestureRecognizer(target: self, action: #selector(HomeVC.teamimageTapped(gesture:)))
        
        team.addGestureRecognizer(taGestur)
        team.isUserInteractionEnabled = true
        
        
        
        // makeOrder
        let Gesture = UITapGestureRecognizer(target: self, action: #selector(HomeVC.makeOrderimageTapped(gesture:)))
        
        makeOrder.addGestureRecognizer(Gesture)
        makeOrder.isUserInteractionEnabled = true
        
        // news
        let taGestu = UITapGestureRecognizer(target: self, action: #selector(HomeVC.newsimageTapped(gesture:)))
        
        news.addGestureRecognizer(taGestu)
        news.isUserInteractionEnabled = true
        
        
        // terms
        let taGest = UITapGestureRecognizer(target: self, action: #selector(HomeVC.termsimageTapped(gesture:)))
        
        terms.addGestureRecognizer(taGest)
        terms.isUserInteractionEnabled = true
        
        
        
        
        
        // privacy
        let taGet = UITapGestureRecognizer(target: self, action: #selector(HomeVC.privacyimageTapped(gesture:)))
        
        privacy.addGestureRecognizer(taGet)
        privacy.isUserInteractionEnabled = true
        
        // youtube
        let taGes = UITapGestureRecognizer(target: self, action: #selector(HomeVC.aboutimageTapped(gesture:)))
        
        about.addGestureRecognizer(taGes)
        about.isUserInteractionEnabled = true
    }
    
    
    @objc func aboutimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
       performSegue(withIdentifier: "about", sender: self)
    }
    
    
    
    
    @objc func termsimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        performSegue(withIdentifier: "terms", sender: self)
    }
    
    @objc func privacyimageTapped(gesture: UIGestureRecognizer) {
    performSegue(withIdentifier: "privacy", sender: self)
    }
    @objc func callusimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        performSegue(withIdentifier: "call", sender: self)

    }
    
    @objc func newsimageTapped(gesture: UIGestureRecognizer) {
    
        performSegue(withIdentifier: "news", sender: self)

    }
    
    @objc func serviceimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        performSegue(withIdentifier: "service", sender: self)

    }
    
    @objc func workimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        performSegue(withIdentifier: "works", sender: self)

    }
    
    
    @objc func makeOrderimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        performSegue(withIdentifier: "order", sender: self)

    }
    
    
    @objc func teamimageTapped(gesture: UIGestureRecognizer) {
        // if the tapped view is a UIImageView then set it to imageview
        performSegue(withIdentifier: "team", sender: self)

    }
}



