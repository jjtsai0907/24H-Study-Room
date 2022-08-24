//
//  ClassroomsVM.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-23.
//

import Foundation

class SubjectMenuViewModel: ObservableObject {
    
    @Published private(set) var subjects = ["Japanese", "English", "Math", "Chemistry", "Mandarin", "Social Science"]
    
    func selectSubject (selectedSubject: String) {
        print("\(selectedSubject) is selected")
    }
}
