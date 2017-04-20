//
//  DataHolder.swift
//  Actividad1
//
//  Created by Jorge Pachón Sánchez on 20/4/17.
//  Copyright © 2017 Jorge Pachón Sánchez. All rights reserved.
//


import UIKit
import Firebase
import FirebaseDatabase
import FirebaseStorage


class DataHolder: NSObject {
    static let sharedInstance:DataHolder=DataHolder()
    
    var firDatabaseRef: FIRDatabaseReference!
    var firStorage:FIRStorage?
    var arCoche: Array<Coche>?
    var firStorageRef:FIRStorageReference?
    
    
    func initFirebase() {
        FIRApp.configure()
        firDatabaseRef = FIRDatabase.database().reference()
        firStorage = FIRStorage.storage()
        firStorageRef = firStorage?.reference()
    }
    
}
