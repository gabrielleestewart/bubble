//
//  OnboardingView.swift
//  Bubble
//
//  Created by Gabrielle Stewart on 2/24/24.
//

import SwiftUI

struct PageControl: View {
    var numberOfPages: Int
    @Binding var currentPage: Int
    
    var body: some View {
        HStack {
            ForEach(0..<3) { page in
                Circle()
                    .fill(page == currentPage ? Color.white : Color.gray)
                    .frame(width: 8, height: 8)
            }
        }
    }
}

struct OnBoardingView: View {
    // MARK: - PROPERTIES
    
    var pages: [Page] = ObData
    @State private var selectedPageIndex: Int = 0
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            TabView(selection: $selectedPageIndex) {
                ForEach(pages.indices, id: \.self) { index in
                    ObFeatureView(page: pages[index])
                        .tag(index)
                }
            } //: TAB
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            .padding(.vertical, 20)
            
            VStack {
                Spacer()
                PageControl(numberOfPages: pages.count, currentPage: $selectedPageIndex)
                .padding(.bottom, 40)
            }
        }
    }
    
    struct OnBoardingView_Previews: PreviewProvider {
        static var previews: some View {
            OnBoardingView()
        }
    }
}
