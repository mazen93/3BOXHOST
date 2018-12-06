//
//  newsModel.swift
//  3BOXHOST
//
//  Created by mac on 10/5/18.
//  Copyright © 2018 mac. All rights reserved.
//

import Foundation
class newsModel {
    
    var photo:String!
    var title:String!
    var details:String!
    var short:String!
    init(photo:String,title:String,details:String,short:String) {
        self.photo=photo
        self.title=title
        self.details=details
        self.short=short
    }
    
    
    
}
