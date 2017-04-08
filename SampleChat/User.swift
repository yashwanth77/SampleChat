//
//  User.swift
//  SampleChat
//
//  Created by Roger on 4/7/17.
//  Copyright © 2017 Yashwanth. All rights reserved.
//

import UIKit

struct User {
    
    private var _firstName : String
    private var _uid : String
    
    var firstName : String{
        return _firstName;
    }
    
    var uid : String{
        return _uid;
    }
    
    init(firstName : String, uid : String) {
        _firstName = firstName
        _uid = uid
    }
}
