//
//  Classrooms.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-22.
//

import SwiftUI

struct Classrooms: View {
    @ObservedObject var viewModel: ClassroomsViewModel

    private let layout = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        LazyVGrid(columns: layout) {
            ForEach(viewModel.subjects, id: \.self) { subject in
                Button {
                    viewModel.selectSubject(selectedSubject: subject)
                } label: {
                    Image("japan")
                        .resizable()
                        .scaledToFit()
                        .padding()
                }
            }
        }
    }
}

struct Classrooms_Previews: PreviewProvider {
    static var previews: some View {
        Classrooms(viewModel: ClassroomsViewModel())
    }
}
