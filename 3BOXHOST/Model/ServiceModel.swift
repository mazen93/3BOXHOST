//
//  ServiceModel.swift
//  3BOXHOST
//
//  Created by mac on 10/19/18.
//  Copyright © 2018 mac. All rights reserved.
//

import Foundation
class ServiceModel {
    var photo:String!
    var title:String!
    var details:String!
    
    init(photo:String,title:String,details:String) {
        self.photo=photo
        self.title=title
        self.details=details
    }
}
