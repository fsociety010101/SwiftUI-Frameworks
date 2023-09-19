//
//  FrameworkGridViewModel.swift
//  SwiftUI-Frameworks
//
//  Created by Dmytro Nimchynskyi on 19/09/2023.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    let columns: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
}
