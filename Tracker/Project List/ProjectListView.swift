//
//  ContentView.swift
//  Tracker
//
//  Created by Valerie N. Prinz on 06/08/2024.
//

import SwiftUI

struct ProjectListView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [Color("Deep Purple"), Color("Blush Pink")],
                startPoint: .top, endPoint: .bottom
            )
            .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("Projects")
                    .font(.screenHeading)
                    .foregroundStyle(.white)
                
                ScrollView(showsIndicators: false) {
                    VStack(spacing: 26) {
                        ProjectCardView()
                        ProjectCardView()
                        ProjectCardView()
                    }
                }
            }
            .padding()
            
            VStack {
                Spacer()
                HStack {
                    Button(action: {
                        // todo
                    }, label: {
                        ZStack {
                            Circle()
                                .frame(width: 65)
                                .foregroundStyle(.black)
                            Image("cross")
                        }
                    })
                    Spacer()
                }
            }
            .padding(.leading)
        }
    }
}

#Preview {
    ProjectListView()
}
