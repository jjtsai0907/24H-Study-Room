//
//  FirestoreService.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-30.
//

import Foundation
import FirebaseFirestore

class FirestoreService: FirestoreServicing {
    private let firestore = Firestore.firestore()
    
    func fetchOnlineClassmates() {
        firestore.collection("users").getDocuments() { (querySnapshot, err) in
            if let err = err {
                print("Error getting documents: \(err)")
            } else {
                for document in querySnapshot!.documents {
                    print("\(document.documentID) => \(document.data())")
                }
            }
        }
    }
}
