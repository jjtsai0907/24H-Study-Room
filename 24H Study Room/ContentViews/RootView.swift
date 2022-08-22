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
            Classrooms()
                .tabItem {
                    Label("Rooms", systemImage: "building.columns.fill")
                }
            
            Profile()
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
