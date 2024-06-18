//
//  XDismissButton.swift
//  swiftui-frameworks
//
//  Created by Salvador on 6/18/24.
//

import SwiftUI

struct XDismissButton: View {
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        HStack {
            Spacer()
            Button {
                isShowingDetailView = false
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(Color(.label))
                    .imageScale(.large)
                    .frame(width: 44, height: 44)
            }
//                .sheet(isPresented: $isShowingSafariView, content: {
//            .fullScreenCover(isPresented: $isShowingSafariView, content: {
//                SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
//            })
        }
        .padding()
    }
}

#Preview {
    XDismissButton(isShowingDetailView: .constant(false))
}
