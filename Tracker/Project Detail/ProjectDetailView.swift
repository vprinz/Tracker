//
//  ProjectDetailView.swift
//  Tracker
//
//  Created by Valerie N. Prinz on 06/08/2024.
//

import SwiftUI
import SwiftData

struct ProjectDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    var project: Project
    
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("Navy"), Color("Custom Blue")],
                startPoint: .top, endPoint: .bottom
            )
            .ignoresSafeArea()
            
            LinearGradient(
                colors: [Color("Washed Blue").opacity(0), Color("Custom Blue")],
                startPoint: .top, endPoint: .bottom
            )
            .frame(width: 1)
            .padding(.leading, -150)
            
            VStack {
                // Header of the screen
                VStack(alignment: .leading, spacing: 13) {
                    Text(project.name)
                        .font(.screenHeading)
                    HStack(alignment: .center, spacing: 13) {
                        Spacer()
                        StatBubbleView(
                            title: "Hourse", stat: "290",
                            startColor: Color("Navy"), endColor: Color("Custom Blue")
                        )
                        StatBubbleView(
                            title: "Sessions", stat: "34",
                            startColor: Color("Custom Green"), endColor: Color("Lime")
                        )
                        StatBubbleView(
                            title: "Updates", stat: "32",
                            startColor: Color("Maroon"), endColor: Color("Custom Purple")
                        )
                        StatBubbleView(
                            title: "Wins", stat: "9",
                            startColor: Color("Maroon"), endColor: Color("Olive")
                        )
                        Spacer()
                    }
                    Text("My current focus is...")
                    HStack {
                        Image(systemName: "checkmark.square")
                        Text("Design the new website")
                    }
                    .padding(.leading)
                }
                .foregroundStyle(.white)
                .padding()
                .background {
                    Color.black
                        .opacity(0.7)
                        .clipShape(.rect(bottomLeadingRadius: 15, bottomTrailingRadius: 15))
                        .ignoresSafeArea()
                }
                
                // Project Updates
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 27) {
                        ProjectUpdateView()
                        ProjectUpdateView()
                        ProjectUpdateView()
                        ProjectUpdateView()
                        ProjectUpdateView()
                    }
                    .padding()
                    .padding(.bottom, 100)
                }
            }
            
            // Footer
            VStack {
                Spacer()
                HStack {
                    Button(action: {
                        // todo: add new project update
                    }, label: {
                        ZStack {
                            Circle()
                                .frame(width: 65)
                                .foregroundStyle(.black)
                            Image("cross")
                        }
                    })
                    .padding([.vertical, .leading])
                    Spacer()
                    Button("Back") {
                        dismiss()
                    }
                    .buttonStyle(.borderedProminent)
                    .foregroundStyle(.white)
                    .tint(.black)
                    .padding([.vertical, .trailing])
                }
                .background {
                    Color.black
                        .opacity(0.5)
                        .clipShape(.rect(topLeadingRadius: 15, topTrailingRadius: 15))
                        .ignoresSafeArea()
                }
            }
            
        }
        .navigationBarBackButtonHidden(true)
    }
}
