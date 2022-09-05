//
//  ProfileViewModel.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-23.
//

import Foundation

class ProfileViewModel: ObservableObject {
    private(set) var fireAuthService: FireAuthServicing
    private(set) var numberOfMeals = 1...10
    
    init(fireAuthService: FireAuthServicing) {
        self.fireAuthService = fireAuthService
    }
    
    func clickUpgradeButton() {
        fireAuthService.login(email: "rasmus1@gg.com", password: "123456")
    }
}
