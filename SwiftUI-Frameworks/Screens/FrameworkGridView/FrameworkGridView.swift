//
//  FrameworkGridView.swift
//  SwiftUI-Frameworks
//
//  Created by Dmytro Nimchynskyi on 15/09/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationStack {
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks, id: \.id) { framework in
                        NavigationLink(value: framework) {
                            FrameworkView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}

struct FrameworkBackground: View {
    var body: some View {
        LinearGradient(
            colors: [.black.opacity(0.8), .black.opacity(0.9)],
            startPoint: .top, endPoint: .bottom)
        .ignoresSafeArea()
    }
}

