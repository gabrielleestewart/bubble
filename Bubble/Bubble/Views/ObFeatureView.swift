//
//  ObFeatureView.swift
//  Bubble
//
//  Created by Gabrielle Stewart on 2/24/24.
//

import SwiftUI
struct ObFeatureView: View {
    
    var page: Page
    
    @State private var isAnimating: Bool = false

    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.white, Color("coral"), Color(.white)]),
                startPoint: .top,
                endPoint: .bottom
            )
            .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 20) {
                // IMAGE
                Image(page.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                    .padding(.horizontal)
                    
                // HEADLINE
                Text(page.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                    .padding()
                    .padding(.vertical)
                
                // BUTTON: START
                StartButtonView()
            }
            .onAppear {
                withAnimation(.easeOut(duration: 0.5)) {
                    isAnimating = true
                }
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .background(LinearGradient(gradient: Gradient(colors: page.Colors), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            .padding(.horizontal, 20)
        }
    }
}
 

    struct ObFeatureView_Previews: PreviewProvider {
        static var previews: some View {
            ObFeatureView(page: ObData[0])
        }
    }
