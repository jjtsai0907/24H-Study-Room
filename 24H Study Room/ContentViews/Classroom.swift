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
        ZStack {
            Image("classroom")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                
            VStack {
                Text(viewModel.subject)
                
                LazyVGrid(columns: GridItem.makeCutomNumberOfGridItems(number: 3)) {
                    ForEach (viewModel.classmatesWhoAreStudying, id: \.self) { classmate in
                        VStack {
                            Image("student")
                            
                            Button {
                                viewModel.pokeClassmate(classmate: classmate)
                            } label: {
                                VStack {
                                    Text(LocalizableString.classroom_button_title.rawValue)
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
        Classroom(viewModel: ClassroomViewModel(subject: "English"))
        
        Classroom(viewModel: ClassroomViewModel(subject: "English"))
            .environment(\.locale, .init(identifier: "zh-Hant"))
    }
}
