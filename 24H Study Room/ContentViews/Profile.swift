//
//  MyProfile.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-22.
//

import SwiftUI

struct Profile: View {
    @ObservedObject var viewModel: ProfileViewModel
    
    var body: some View {
        VStack {
            Image("baby")
                .resizable()
                .scaledToFit()
                .frame(maxWidth: 200)
                .padding(.top, 20)
            Button ("Change outfit/ character") {
                viewModel.clickUpgradeButton()
            }.padding(.bottom, 20)
            
            VStack {
                Text("Purchasing Power:")
                LazyVGrid(columns: GridItem.makeCutomNumberOfGridItems(number: 4)) {
                    ForEach(viewModel.numberOfMeals, id: \.self) { item in
                        Image("ramen")
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: 50)
                    }
                }
            }
        }
    }
}

struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        Profile(viewModel: ProfileViewModel(fireAuthService: MockFireAuthService()))
    }
}
