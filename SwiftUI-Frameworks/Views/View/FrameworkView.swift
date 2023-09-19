//
//  FrameworkView.swift
//  SwiftUI-Frameworks
//
//  Created by Dmytro Nimchynskyi on 19/09/2023.
//

import SwiftUI

struct FrameworkView: View {
    
    let framework: Framework
    
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .fontWeight(.semibold)
                .font(.title2)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}

#Preview {
    FrameworkView(framework: MockData.sampleFramework)
}
