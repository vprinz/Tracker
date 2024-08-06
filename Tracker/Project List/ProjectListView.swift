//
//  ContentView.swift
//  Tracker
//
//  Created by Valerie N. Prinz on 06/08/2024.
//

import SwiftUI
import SwiftData

struct ProjectListView: View {
    
    @State private var newProject: Project?
    @Query private var projects: [Project]
    
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
                        ForEach(projects) { project in
                            ProjectCardView(project: project)
                        }
                    }
                }
            }
            .padding()
            
            VStack {
                Spacer()
                HStack {
                    Button(action: {
                        self.newProject = Project()
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
        .sheet(item: $newProject) { project in
            AddProjectView(project: project)
                .presentationDetents([.fraction(0.2)])
        }
    }
}

#Preview {
    ProjectListView()
}
