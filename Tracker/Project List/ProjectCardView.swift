//
//  ProjectCardView.swift
//  Tracker
//
//  Created by Valerie N. Prinz on 06/08/2024.
//

import SwiftUI

struct ProjectCardView: View {
    
    var project: Project
    
    var body: some View {
        ZStack(alignment: .leading) {
            RoundedRectangle(cornerRadius: 15)
                .opacity(0.7)
                .shadow(radius: 5, x: 0, y: 4)
            VStack(alignment: .leading, spacing: 10) {
                Text(project.name)
                    .font(.bigHeadline)
                    .foregroundStyle(.white)
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
                    .font(.featuredText)
                    .foregroundStyle(.gray)
                Text(project.focus)
                    .font(.featuredText)
                    .bold()
                    .foregroundStyle(.gray)
            }
            .padding()
        }
    }
}
