//
//  OnboardingView.swift
//  Bubble
//
//  Created by Gabrielle Stewart on 2/24/24.
//  OnboardingView.swift
import SwiftUI
struct OnboardingView: View {
    // MARK: - PROPERTIES
    var pages: [Page] = ObData
    @State private var selectedPageIndex: Int = 0
    @State private var contentOffset: CGFloat = 0
    // MARK: - BODY
    var body: some View {
        ZStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 0) {
                    ForEach(pages.indices, id: \.self) { index in
                        ObFeatureView(page: pages[index])
                        // change this
                            .frame(width: UIScreen.main.bounds.width)
                            .ignoresSafeArea(.all)
                    }
                }
                .preference(key: OffsetPreferenceKey.self, value: contentOffset)
            }
            .coordinateSpace(name: "scroll-view")
            .onPreferenceChange(OffsetPreferenceKey.self) { offset in
                let currentIndex = Int(offset / UIScreen.main.bounds.width)
                if currentIndex == pages.count {
                    // If the last page is reached, scroll back to the first page
                    withAnimation {
                        contentOffset = 0
                    }
                } else {
                    selectedPageIndex = currentIndex
                }
            }
            .onAppear {
                withAnimation(.easeOut(duration: 0.5)) {
                    UIScrollView.appearance().isPagingEnabled = true
                }
            }
        }
    }
    struct OnboardingView_Previews: PreviewProvider {
        static var previews: some View {
            OnboardingView()
        }
    }
}
struct OffsetPreferenceKey: PreferenceKey {
    static var defaultValue: CGFloat = 0
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = nextValue()
    }
}



