//
//  ContentView.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-22.
//

import SwiftUI

struct RootView: View {
    var body: some View {
        TabView {
            Classrooms(viewModel: ClassroomsViewModel())
                .tabItem {
                    Label("Subjects", systemImage: "building.columns.fill")
                }
            
            Profile(viewModel: ProfileViewModel())
                .tabItem {
                    Label("Me", systemImage: "person.fill")
                }
            Friends()
                .tabItem {
                    Label("Friends", systemImage: "figure.stand.line.dotted.figure.stand")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
