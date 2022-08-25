//
//  Classroom.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-22.
//

import SwiftUI

struct Classroom: View {
    @ObservedObject var viewModel: ClassroomViewModel
    let gridLayout: GridLayout
   
    var body: some View {
        ZStack {
            Image("classroom")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                
            VStack {
                Text(" \(viewModel.subject) Classroom")
                
                LazyVGrid(columns: gridLayout.fourGridItems) {
                    ForEach (viewModel.classmatesWhoAreStudying, id: \.self) { classmate in
                        VStack {
                            Image("student")
                            
                            Button {
                                viewModel.pokeClassmate(classmate: classmate)
                            } label: {
                                VStack {
                                    Text("Irritate")
                                    Text(classmate)
                                }
                            }
                        }
                    }
                }
            }.padding(.horizontal, 100)
        }
    }
}

struct Classroom_Previews: PreviewProvider {
    static var previews: some View {
        Classroom(viewModel: ClassroomViewModel(subject: "English"), gridLayout: GridLayout())
    }
}
