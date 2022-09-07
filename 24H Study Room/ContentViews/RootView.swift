//
//  ContentView.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-22.
//

import SwiftUI
import Firebase

struct RootView: View {
    var body: some View {
        
        Login(viewModel: LoginViewModel(fireAuthService: FireAuthService()))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
