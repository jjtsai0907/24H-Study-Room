//
//  ClassroomViewModel.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-24.
//

import Foundation

class ClassroomViewModel: ObservableObject {
    private(set) var subject: String
    
    init(subject: String) {
        self.subject = subject
    }
}
