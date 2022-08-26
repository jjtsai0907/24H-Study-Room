//
//  GridItemExtension.swift
//  24H Study Room
//
//  Created by Jia-Jiuan Tsai on 2022-08-25.
//

import SwiftUI

extension GridItem {
    static func makeCutomNumberOfGridItems(number: Int) -> [GridItem] {
        var gridItems: [GridItem] = []
        for _ in 1...number {
            gridItems.append(GridItem(.flexible()))
        }
        return gridItems
    }
}
