//
//  ProjectDetailView.swift
//  Tracker
//
//  Created by Valerie N. Prinz on 06/08/2024.
//

import SwiftUI

struct ProjectDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    var project: Project
    
    var body: some View {
        VStack {
            Text(project.name)
            Button("Back") {
                dismiss()
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ProjectDetailView(project: Project())
}
