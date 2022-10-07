//
//  FriendsViewModel.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-23.
//

import Foundation
import FirebaseFirestore

class FriendsViewModel: ObservableObject {
    @Published private(set) var namesOfClassmates = ["Johan", "Jan", "Joel", "J"]
    private(set) var firestoreService: FirestoreServicing
    
    init(firestoreService: FirestoreServicing) {
        self.firestoreService = firestoreService
    }
    
    func selectStudent(studentName: String) {
        print("\(studentName) is selected")
    }
    
    func loadOnlineClassmates() {
        firestoreService.fetchOnlineClassmates()
    }
}
