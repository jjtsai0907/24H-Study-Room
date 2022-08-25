//
//  Classrooms.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-22.
//

import SwiftUI

struct SubjectMenu: View {
    var viewModel: SubjectMenuViewModel
    let gridLayout: GridLayout
    @State var showingDetails = false
    
    var body: some View {
        LazyVGrid(columns: gridLayout.twoGridItems) {
            ForEach(viewModel.subjects, id: \.self) { subject in
                NavigationLink {
                    Classroom(viewModel: ClassroomViewModel(subject: subject), gridLayout: GridLayout())
                } label: {
                    Image(subject.lowercased())
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal)
                        .padding(.bottom)
                }
            }
        }
    }
}

struct Classrooms_Previews: PreviewProvider {
    static var previews: some View {
        SubjectMenu(viewModel: SubjectMenuViewModel(), gridLayout: GridLayout())
    }
}
