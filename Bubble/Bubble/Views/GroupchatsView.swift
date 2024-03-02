//
//  GroupchatsView.swift
//  Bubble
//
//  Created by Melanie Andrade-Muñoz on 2/25/24.
//

import Foundation
import SwiftUI

struct GroupchatsView: View {
    var body: some View {
        ZStack {
            Color(red: 0.01, green: 0.17, blue: 0.27)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Text("Chats")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                    
                    Spacer()
                    
                    NavigationLink(destination: IdentitiesView()) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.white)
                            .font(.title)
                            .fontWeight(.semibold)
                            .padding()
                    }
                }
                
                
                
                ScrollView {
                    VStack {
                        Spacer()
                        HStack {
                            Image("notebook")
                                .resizable()
                                .clipShape(.circle)
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 50, height: 50, alignment: .center)
                                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                            
                            VStack(alignment: .listRowSeparatorLeading) {
                                HStack {
                                    Text("INTERNATIONAL")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                    
                                    Image("noti")
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .frame(width: 15, height: 15, alignment: .leading)
                                }
                                
                                
                                Text("Savv: Hey! What time does your flight leave tomorrow? I can drop you off.")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding()
                                Divider()
                                    .background(Color.white)
                                    .padding(.vertical, 5)
                            }
                        }
                        Spacer()
                        
                        HStack(spacing: 2) {
                            Image("wellness")
                                .resizable()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 50, height: 50, alignment: .center)
                                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                            
                            VStack(alignment: .listRowSeparatorLeading) {
                                HStack {
                                    Text("Latinos in Tech!")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                    
                                    
                                    Image("noti")
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .frame(width: 15, height: 15, alignment: .leading)
                                }
                                
                                
                                Text("Rodrigo: Join us for a night of Loteria at the pit tomorrow :) ")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding()
                                Divider()
                                    .background(Color.white)
                                    .padding(.vertical, 5)
                            }
                        }
                        Spacer()
                        
                        HStack(spacing: 2) {
                            Image("wstem")
                                .resizable()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 50, height: 50, alignment: .center)
                                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                            
                            VStack(alignment: .listRowSeparatorLeading) {
                                HStack {
                                    Text("Women in STEM")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                }
                                
                                
                                Text("You: I got mud all over my lab coat today haha!")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                    .padding()
                                Divider()
                                    .background(Color.white)
                                    .padding(.vertical, 5)
                            }
                        }
                        HStack(spacing: 2) {
                            Image("walk")
                                .resizable()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 50, height: 50, alignment: .center)
                                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                            
                            VStack(alignment: .listRowSeparatorLeading) {
                                HStack {
                                    Text("Running club")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                    
                                }
                                
                                
                                Text("Jerry: Rise and shine everyone! Our marathon is in...")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                    .padding()
                                Divider()
                                    .background(Color.white)
                                    .padding(.vertical, 5)
                            }
                        }
                        Spacer()
                        HStack(spacing: 2) {
                            Image("lunch")
                                .resizable()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 50, height: 50, alignment: .center)
                                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                            
                            VStack(alignment: .listRowSeparatorLeading) {
                                HStack {
                                    Text("Gabrielle Stewart")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                }
                                
                                
                                Text("You: We should go to a CS Workshop together today!")
                                    .font(.caption)
                                    .foregroundColor(.gray)
                                    .padding()
                                Divider()
                                    .background(Color.white)
                                    .padding(.vertical, 5)
                            }
                        }
                        Spacer()
                        HStack(spacing: 2) {
                            Image("bsm")
                                .resizable()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 50, height: 50, alignment: .center)
                                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                            
                            VStack(alignment: .listRowSeparatorLeading) {
                                HStack {
                                    Text("Black Student Movement")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                    Image("noti")
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .frame(width: 15, height: 15, alignment: .leading)
                                }
                                
                                
                                Text("BSM: We're so excited to see you all tomorrow!")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding()
                                Divider()
                                    .background(Color.white)
                                    .padding(.vertical, 5)
                            }
                        }
                        Spacer()
                        HStack {
                            Image("music")
                                .resizable()
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 50, height: 50, alignment: .center)
                                .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                            
                            VStack(alignment: .listRowSeparatorLeading) {
                                HStack {
                                    Text("Jazz Club")
                                        .font(.caption)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                    Image("noti")
                                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                        .frame(width: 15, height: 15, alignment: .leading)
                                }
                                
                                
                                Text("Jalen: I'm happy to show you how to play the guitar on...")
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding()
                                Divider()
                                    .background(Color.white)
                                    .padding(.vertical, 5)
                            }
                        }
                        Spacer()
                    }
                }
            }
            .padding(.horizontal)
            .navigationBarHidden(true) // Hide the navigation bar
        }
    }
}

struct GroupchatsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupchatsView()
    }
}
