//
//  Classroom.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-22.
//

import SwiftUI

struct Classroom: View {
    @ObservedObject var viewModel: ClassroomViewModel
   
    var body: some View {
        Text(" \(viewModel.subject) Classroom")
    }
}

struct Classroom_Previews: PreviewProvider {
    static var previews: some View {
        Classroom(viewModel: ClassroomViewModel(subject: "English"))
    }
}
