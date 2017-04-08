//
//  DataService.swift
//  SampleChat
//
//  Created by Roger on 4/6/17.
//  Copyright © 2017 Yashwanth. All rights reserved.
//

let FIR_CHILD_USERS = "users"
import Foundation
import FirebaseDatabase

    class DataService {
    private static let _instance = DataService()

    static var instance: DataService {
        return _instance
    }

    var mainRef: FIRDatabaseReference {
        return FIRDatabase.database().reference()
    }
    
        var userRef : FIRDatabaseReference{
            return mainRef.child(FIR_CHILD_USERS);
        }
        
        
        
    func saveUser(uid: String) {
        let profile: Dictionary<String, AnyObject> = ["firstName": "" as AnyObject, "lastName": "" as AnyObject]
        mainRef.child(FIR_CHILD_USERS).child(uid).child("profile").setValue(profile)
    }
}
