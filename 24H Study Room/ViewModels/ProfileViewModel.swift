//
//  ProfileViewModel.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-23.
//

import Foundation

class ProfileViewModel: ObservableObject {
    private(set) var numberOfMeals = 1...10
    
    func clickUpgradeButton() {
        print("Upgrade Button is clicked")
    }
}
// test SSH
