//
//  Tabs.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-09-05.
//

import SwiftUI

struct Tabs: View {
    var body: some View {
        
        NavigationView {
            TabView {
                SubjectMenu(viewModel: SubjectMenuViewModel())
                    .tabItem {
                        Label(LocalizableString.tabs_title_subjects.rawValue, systemImage: "building.columns.fill")
                    }
                Profile(viewModel: ProfileViewModel())
                    .tabItem {
                        Label(LocalizableString.tabs_title_me.rawValue, systemImage: "person.fill")
                    }
                Friends(viewModel: FriendsViewModel(firestoreService: FirestoreService()))
                    .tabItem {
                        Label(LocalizableString.tabs_title_friends.rawValue, systemImage: "figure.stand.line.dotted.figure.stand")
                    }
            }
            .navigationTitle("24H Study Room")
        }
    }
}

struct Tabs_Previews: PreviewProvider {
    static var previews: some View {
        Tabs()
        
        Tabs()
            .environment(\.locale, .init(identifier: "zh-Hant"))
    }
}
