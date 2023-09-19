//
//  FrameworkDetailView.swift
//  SwiftUI-Frameworks
//
//  Created by Dmytro Nimchynskyi on 19/09/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            
            FrameworkView(framework: framework)
            
            Text(framework.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Button {
                isShowingSafariView = true
            } label: {
//                AFButton(title: "Learn more")
                Label("Learn more", systemImage: "book.fill")
            }
            .buttonStyle(.borderedProminent)
            .controlSize(.large)
//            .foregroundColor(.yellow)
//            .buttonBorderShape(.roundedRectangle(radius: 10))
            .tint(.red)
        }
        .fullScreenCover(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.sampleFramework)
        .preferredColorScheme(.dark)
}
