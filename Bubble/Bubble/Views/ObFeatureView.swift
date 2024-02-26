//
//  ObFeatureView.swift
//  Bubble
//
//  Created by Gabrielle Stewart on 2/24/24.
//
// ObFeatureView.swift
import SwiftUI
struct ObFeatureView: View {
    var page: Page
    @State private var isAnimating: Bool = false
    var body: some View {
        NavigationView {
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
                    NavigationLink(destination: LoginView()) {
                        HStack(spacing: 8) {
                            Text("Find your bubble")
                            Image(systemName: "arrow.right.circle")
                                .imageScale(.large)
                        }
                        .padding(.horizontal, 16)
                        .padding(.vertical, 10)
                        .background(
                            Capsule().strokeBorder(Color.white, lineWidth: 1.25)
                        )
                        .accentColor(Color.white)
                    }
                    .navigationBarBackButtonHidden(true)
                }
                .padding(.horizontal, 20)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimating = true
                    }
                }
                // MARK: - TAB APPEARANCE
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
                .background(LinearGradient(
                    stops: [
                    Gradient.Stop(color: Color(red: 0.01, green: 0.17, blue: 0.27), location: 0.53),
                    Gradient.Stop(color: Color(red: 0.35, green: 0.5, blue: 0.59), location: 1.00),
                    ],
                    startPoint: UnitPoint(x: 0.5, y: 0),
                    endPoint: UnitPoint(x: 0.5, y: 1)
                    ))
                .cornerRadius(20)
                .padding(.horizontal, 20)
            }
        }
    }
}
struct ObFeatureView_Previews: PreviewProvider {
    static var previews: some View {
        ObFeatureView(page: ObData[0])
    }
}



