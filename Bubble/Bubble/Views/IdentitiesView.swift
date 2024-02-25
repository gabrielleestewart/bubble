//
//  IdentitiesView.swift
//  Bubble
//
//  Created by Melanie Andrade-Muñoz on 2/24/24.
//
import SwiftUI

struct IdentitiesView: View {
    @State private var selectedTexts: Set<String> = []
    @State private var searchText: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                
                Color(red: 0.01, green: 0.17, blue: 0.27)
                    .edgesIgnoringSafeArea(.all)
                Image("bubbles")
                    .resizable()
                    .scaledToFit()
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack {
                    Spacer()
                    
                    HStack {
                        TextField("", text: $searchText)
                            .padding(.leading, 10)
                            .padding(.vertical, 15)
                            .background(searchText.isEmpty ? Color.clear : Color.white.opacity(0.3))
                            .cornerRadius(10)
                            .foregroundColor(.white) // Set text color to white
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.white, lineWidth: 1) // Add white border
                            )
                            .padding(.horizontal, 20)
                            .padding(.vertical, 8)
                        
                        NavigationLink(destination: EventsView()) {
                            Image(systemName: "magnifyingglass")
                                .foregroundColor(.white)
                                .font(.title)
                                .padding(.trailing, 10)
                        }
                    }
                    .padding(.horizontal, 10)
                    
                    
                    VStack(spacing: 20) {
                        Divider()
                            .background(Color.white)
                            .padding(.vertical, 5)
                        
                        HStack {
                            Button(action: {
                                toggleSelection("INTERNATIONAL")
                            }) {
                                Text("INTERNATIONAL")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(selectedTexts.contains("INTERNATIONAL") ? RoundedRectangle(cornerRadius: 10).fill(Color(red: 0.35, green: 0.5, blue: 0.59)) : RoundedRectangle(cornerRadius: 10).fill(Color.clear))
                            }
                            Button(action: {
                                toggleSelection("TRANS")
                            }) {
                                Text("TRANS")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(selectedTexts.contains("TRANS") ? RoundedRectangle(cornerRadius: 10).fill(Color(red: 0.96, green: 0.69, blue: 0.67)) : RoundedRectangle(cornerRadius: 10).fill(Color.clear))
                            }
                        }
                        
                        HStack {
                            Button(action: {
                                toggleSelection("NEURODIVERGENT")
                            }) {
                                Text("NEURODIVERGENT")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(selectedTexts.contains("NEURODIVERGENT") ? RoundedRectangle(cornerRadius: 10).fill(Color(red: 0.96, green: 0.69, blue: 0.67)) : RoundedRectangle(cornerRadius: 10).fill(Color.clear))
                            }
                            Button(action: {
                                toggleSelection("WOMAN")
                            }) {
                                Text("WOMAN")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(selectedTexts.contains("WOMAN") ? RoundedRectangle(cornerRadius: 10).fill(Color(red: 0.35, green: 0.5, blue: 0.59)) : RoundedRectangle(cornerRadius: 10).fill(Color.clear))
                            }
                        }
                        
                        HStack {
                            Button(action: {
                                toggleSelection("NONBINARY")
                            }) {
                                Text("NONBINARY")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(selectedTexts.contains("NONBINARY") ? RoundedRectangle(cornerRadius: 10).fill(Color(red: 0.35, green: 0.5, blue: 0.59)) : RoundedRectangle(cornerRadius: 10).fill(Color.clear))
                            }
                            Button(action: {
                                toggleSelection("AUTISTIC")
                            }) {
                                Text("AUTISTIC")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(selectedTexts.contains("AUTISTIC") ? RoundedRectangle(cornerRadius: 10).fill(Color(red: 0.96, green: 0.69, blue: 0.67)) : RoundedRectangle(cornerRadius: 10).fill(Color.clear))
                            }
                        }
                        
                        HStack {
                            
                            Button(action: {
                                toggleSelection("LGBTQIA+")
                            }) {
                                Text("LGBTQIA+")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(selectedTexts.contains("LGBTQIA+") ? RoundedRectangle(cornerRadius: 10).fill(Color(red: 0.96, green: 0.69, blue: 0.67)) : RoundedRectangle(cornerRadius: 10).fill(Color.clear))
                            }
                            
                            Button(action: {
                                toggleSelection("BUDDHIST")
                            }) {
                                Text("BUDDHIST")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(selectedTexts.contains("BUDDHIST") ? RoundedRectangle(cornerRadius: 10).fill(Color(red: 0.35, green: 0.5, blue: 0.59)) : RoundedRectangle(cornerRadius: 10).fill(Color.clear))
                            }
                        }
                        Spacer()
                    }
                    .padding()
                }
            }
        }
    }
    
    private func toggleSelection(_ text: String) {
        if selectedTexts.contains(text) {
            selectedTexts.remove(text)
        } else {
            selectedTexts.insert(text)
        }
    }
}

struct IdentitiesView_Previews: PreviewProvider {
static var previews: some View {
    IdentitiesView()
    }
}
