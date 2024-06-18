//
//  FrameworkGridView.swift
//  swiftui-frameworks
//
//  Created by Salvador on 6/17/24.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
//        NavigationView {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    // Since MockData is identifiable, able to remove id: \.id
                    ForEach(MockData.frameworks) { framework in
                        NavigationLink(value: framework) {
                            FrameworkTitleView(framework: framework)
                        }
//                            .onTapGesture {
//                                viewModel.selectedFramework = framework
//                            }
                    }
                }
                
            }
            .navigationTitle("🍎 Frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailView(framework: framework)
            }
//            .sheet(isPresented: $viewModel.isShowingDetailView) {
//                FrameworkDetailView(framework: viewModel.selectedFramework ?? MockData.sampleFramework, isShowingDetailView: $viewModel.isShowingDetailView)
//            }
        }
        
    }
}

#Preview {
    FrameworkGridView()
}
