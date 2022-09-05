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
        
        NavigationView {
            TabView {
                SubjectMenu(viewModel: SubjectMenuViewModel())
                    .tabItem {
                        Label("Subjects", systemImage: "building.columns.fill")
                    }
                
                Profile(viewModel: ProfileViewModel(fireAuthService: FireAuthService()))
                    .tabItem {
                        Label("Me", systemImage: "person.fill")
                    }
                Friends(viewModel: FriendsViewModel(firestoreService: FirestoreService()))
                    .tabItem {
                        Label("Friends", systemImage: "figure.stand.line.dotted.figure.stand")
                    }
            }
            .navigationTitle("24H Study Room")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
