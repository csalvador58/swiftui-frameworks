//
//  FrameworkGridView.swift
//  swiftui-frameworks
//
//  Created by Salvador on 6/17/24.
//

import SwiftUI

struct FrameworkGridView: View {
    var body: some View {
        FrameworkTitleView(name: "App Clips", imageName: "app-clip")
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View {
    
    let name: String
    let imageName: String
    
    var body: some View {
        VStack {
            Image(imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
    
    
}