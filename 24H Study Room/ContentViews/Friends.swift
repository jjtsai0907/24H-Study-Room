//
//  Friends.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-22.
//

import SwiftUI

struct Friends: View {
    @ObservedObject var viewModel: FriendsViewModel
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: GridItem.makeCutomNumberOfGridItems(number: 2)) {
                ForEach(viewModel.namesOfClassmates, id: \.self) { classmate in
                    Button {
                        viewModel.selectStudent(studentName: classmate)
                    } label: {
                        VStack {
                            Image("student")
                            Text(classmate)
                        }
                    }.padding()
                }
            }.padding(50)
        }
    }
}

struct Friends_Previews: PreviewProvider {
    static var previews: some View {
        Friends(viewModel: FriendsViewModel())
    }
}
