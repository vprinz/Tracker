//
//  ProjectUpdateView.swift
//  Tracker
//
//  Created by Valerie N. Prinz on 06/08/2024.
//

import SwiftUI

struct ProjectUpdateView: View {
    
    var projectUpdate: ProjectUpdate
    
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.black)
                .shadow(radius: 5, x: 0, y: 4)
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text(DataHelper.projectUpdateDate(inputDate: projectUpdate.date))
                        .padding(.leading)
                    Spacer()
                    Text("\(projectUpdate.hours) Hours")
                        .padding(.trailing)
                }
                .padding(.vertical, 5)
                .background {
                    Color("Orchid")
                }
                Text(projectUpdate.headline)
                    .font(.smallHeadline)
                    .padding(.horizontal)
                Text(projectUpdate.summary)
                    .padding(.horizontal)
                    .padding(.bottom)
            }
            .foregroundStyle(.white)
            .font(.regularText)
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}
