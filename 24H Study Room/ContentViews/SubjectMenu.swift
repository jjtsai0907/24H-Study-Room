//
//  Classrooms.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-22.
//

import SwiftUI

struct SubjectMenu: View {
    var viewModel: SubjectMenuViewModel
    @State var showingDetails = false
    
    private let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: layout) {
            ForEach(viewModel.subjects, id: \.self) { subject in
                NavigationLink {
                    Classroom(viewModel: ClassroomViewModel(subject: subject))
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
        SubjectMenu(viewModel: SubjectMenuViewModel())
    }
}
