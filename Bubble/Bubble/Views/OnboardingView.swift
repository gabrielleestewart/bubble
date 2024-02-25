//
//  OnboardingView.swift
//  Bubble
//
//  Created by Gabrielle Stewart on 2/24/24.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK: - PROPERTIES
    
    var pages: [Page] = ObData

    // MARK: - BODY
    
    var body: some View {
      TabView {
        ForEach(pages[0...2]) { item in
          ObFeatureView(page: item)
        } //: LOOP
      } //: TAB
      .tabViewStyle(PageTabViewStyle())
      .padding(.vertical, 20)
    }

}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
