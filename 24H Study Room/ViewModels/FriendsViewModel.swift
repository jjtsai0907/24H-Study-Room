//
//  FriendsViewModel.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-23.
//

import Foundation

class FriendsViewModel: ObservableObject {
    @Published private(set) var namesOfClassmates = ["Johan", "Jan", "Joel", "J"]
    
    func selectStudent(studentName: String) {
        print("\(studentName) is selected")
    }
}
