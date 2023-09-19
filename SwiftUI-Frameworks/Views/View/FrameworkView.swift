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
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(framework.name)
                .fontWeight(.semibold)
                .font(.title2)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
        }
    }
}

#Preview {
    FrameworkView(framework: MockData.sampleFramework)
}
