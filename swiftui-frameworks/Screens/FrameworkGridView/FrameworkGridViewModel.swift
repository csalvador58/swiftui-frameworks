//
//  FrameworkGridViewModel.swift
//  swiftui-frameworks
//
//  Created by Salvador on 6/17/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
//    // Optional property to hold the selected Framework instance
//    // Will trigger the didSet observer when set to a new value
//    var selectedFramework: Framework? {
//        didSet {
//            // When selectedFramework is set, update isShowingDetailView to true
//            isShowingDetailView = true
//        }
//    }
//    
//    // Published property to indicate if the detail view should be shown
//    // Views can observe changes to this property and update the UI accordingly
//    @Published var isShowingDetailView = false
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
}

//#Preview {
//    FrameworkGridViewModel()
//}
