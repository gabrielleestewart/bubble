//
//  EventsView.swift
//  Bubble
//
//  Created by Melanie Andrade-Muñoz on 2/25/24.
//

import SwiftUI

struct EventsView: View {
    var body: some View {
        ZStack {
            Color(red: 0.01, green: 0.17, blue: 0.27)
                .ignoresSafeArea(.all, edges: [.bottom, .top])

            Color(red: 0.01, green: 0.17, blue: 0.27)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Text("Events for you")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
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
                .padding(.top, 10)
                
                ScrollView {
                    VStack {
                        Text("Featured")
                            .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                            .fontWeight(.bold)
                            .font(.title)
                            .frame(alignment: .leading)
                            .padding()
                        
                        VStack(spacing: 20) {
                            Image("wstem")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 290, height: 290, alignment: .center)
                                .padding()
                            
                            VStack(alignment: .center) {
                                Text("You Are the Future:")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                
                                Text(" Young Women in STEM")
                                    .font(.title)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                
                                Link("Join a panel of UNC and external experts, to learn about ways to empower young women to achieve in STEM. The event will kick off with an exciting panel discussion moderated by Aynsley Szczesniak, the Founder and Executive Director of Speak Out Sisterhood, a global network elevating youth to eradicate barriers to equality for women in STEM.", destination: URL(string: "https://heellife.unc.edu/event/9925855") ?? URL(string: "https://heellife.unc.edu/event/9925855")!)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .fixedSize(horizontal: false, vertical: true)
                                    .padding()
                            }
                            Spacer()
                        }
                        
                        HStack(spacing: 2) {
                            Image("lunch")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 170, height: 170, alignment: .center)
                            
                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                                .padding()
                            
                            VStack(alignment: .center) {
                                Text("DEI Gender-affirming")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                
                                Text("Lunch and Learn")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                
                                Link("Dr. Abby Bechtol will be leading a discussion on gender-affirming care, which includes its delivery and impact. Students can hear about how to provide proper care to an often underserved community.", destination: URL(string: "https://heellife.unc.edu/event/9951241") ?? URL(string: "https://heellife.unc.edu/event/9951241")!)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding()
                            }
                        }
                        Spacer()
                        
                        HStack(spacing: 2) {
                            Image("engineers")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 170, height: 170, alignment: .center)
                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                                .padding()
                            
                            VStack(alignment: .center) {
                                Text("Engineers Local Conference")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                
                                Link("We will be discussing travel plan details (leaving on the evening of February 29 & returning on March 3), the WE Local conference agenda, and answering any questions.", destination: URL(string: "https://heellife.unc.edu/event/9727379") ?? URL(string: "https://heellife.unc.edu/event/9727379")!)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding()
                            }
                        }
                        Spacer()
                        
                        HStack(spacing: 2) {
                            Image("music")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 170, height: 170, alignment: .center)
                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                                .padding()
                            
                            VStack(alignment: .center) {
                                Text("Women in Music")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                
                                Link("Kari Lindquist will present from her dissertation material on women in wind bands during the Cold War. She will show some of the various ways women participated in and supported college band programs before Title IX and their many pathways to musical careers.", destination: URL(string: "https://heellife.unc.edu/event/9974404") ?? URL(string: "https://heellife.unc.edu/event/99744049")!)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding()
                            }
                        }
                        HStack(spacing: 2) {
                            Image("friends")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 170, height: 170, alignment: .center)
                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                                .padding()
                            
                            VStack(alignment: .center) {
                                Text("Whole Community Connection")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                
                                Link("Participants will learn about Whole Community Connection, four community-academic projects implemented in Edgecombe and Robeson Counties and the leadership journeys of local leaders.", destination: URL(string: "https://heellife.unc.edu/event/9915269") ?? URL(string: "https://heellife.unc.edu/event/9915269")!)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding()
                            }
                        }
                        HStack(spacing: 2) {
                            Image("wellness")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 170, height: 170, alignment: .center)
                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                                .padding()
                            
                            VStack(alignment: .center) {
                                Text("Dimensions of Wellness")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                
                                Link("The Dimensions of Wellness Workshop aims to promote an understanding that wellness is a holistic idea that is fluid and ever-changing. Dimensions of Wellness includes a personal reflection of own wellness and directs individuals to identify wellness goals to work on.", destination: URL(string: "https://heellife.unc.edu/event/9971172") ?? URL(string: "https://heellife.unc.edu/event/99711729")!)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding()
                            }
                        }
                        HStack(spacing: 2) {
                            Image("walk")
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 170, height: 170, alignment: .center)
                            .shadow(color: Color.black.opacity(0.5), radius: 10, x: 0, y: 5)
                                .padding()
                            
                            VStack(alignment: .center) {
                                Text("Engaging Community Members")
                                    .font(.caption)
                                    .fontWeight(.semibold)
                                    .foregroundColor(Color(red: 0.96, green: 0.69, blue: 0.67))
                                
                                Link("Walk audits are an invaluable tool to engage community members to evaluate and advocate for improvements to their neighborhoods that foster safer and more accessible spaces for people of all ages and abilities to be active.", destination: URL(string: "https://heellife.unc.edu/event/9854899") ?? URL(string: "https://heellife.unc.edu/event/9854899")!)
                                    .font(.caption)
                                    .foregroundColor(.white)
                                    .padding()
                            }
                        }
                    }
                }
                Spacer()
            }
        }
        .navigationBarHidden(true) // Hide the navigation bar
    }
}


struct EventsView_Previews: PreviewProvider {
    static var previews: some View {
        EventsView()
    }
}
