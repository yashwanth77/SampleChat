//
//  DataService.swift
//  SampleChat
//
//  Created by Roger on 4/6/17.
//  Copyright © 2017 Yashwanth. All rights reserved.
//

import Foundation
import FirebaseDatabase
import FirebaseStorage

class DataService {
private static let _instance = DataService()

static var instance: DataService {
    return _instance
}

var mainRef: FIRDatabaseReference {
    return FIRDatabase.database().reference()
}
func saveUser(uid: String) {
    let profile: Dictionary<String, AnyObject> = ["firstName": "" as AnyObject, "lastName": "" as AnyObject]
    mainRef.child("users").child(uid).child("profile").setValue(profile)
}
}
