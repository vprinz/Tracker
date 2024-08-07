//
//  AddProjectUpdateView.swift
//  Tracker
//
//  Created by Valerie N. Prinz on 07/08/2024.
//

import SwiftUI

struct AddProjectUpdateView: View {
    
    @Environment(\.dismiss) private var dismiss
    @Environment(\.modelContext) private var context
    
    var project: Project
    var projectUpdate: ProjectUpdate
    @State var headline = ""
    @State var summary = ""
    @State var hours = ""
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Text("New Project Update")
                    .font(.bigHeadline)
                    .foregroundStyle(.white)
                TextField("Headline", text: $headline)
                TextField("Summary", text: $summary, axis: .vertical)
                HStack {
                    TextField("Hours", text: $hours)
                        .keyboardType(.numberPad)
                        .frame(width: 70)
                    Button("Save") {
                        projectUpdate.headline = headline
                        projectUpdate.summary = summary
                        projectUpdate.hours = Int(hours)!
                        project.updates.append(projectUpdate)
                        dismiss()
                    }
                    .buttonStyle(.borderedProminent)
                }
                Spacer()
            }
            .padding(.horizontal)
            .padding(.top)
            .textFieldStyle(.roundedBorder)
        }
    }
}
