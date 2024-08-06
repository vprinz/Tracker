//
//  StatBubbleView.swift
//  Tracker
//
//  Created by Valerie N. Prinz on 06/08/2024.
//

import SwiftUI

struct StatBubbleView: View {
    
    var title: String
    var stat: String
    var startColor: Color
    var endColor: Color
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(LinearGradient(
                    colors: [startColor, endColor],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing)
                )
                .frame(width: 60, height: 40)
            VStack {
                Text(title)
                    .font(.captionText)
                Text(stat)
                    .font(.featuredNumber)
                    .bold()
            }
            .foregroundStyle(.white)
        }
    }
}

#Preview {
    StatBubbleView(
        title: "Hours",
        stat: "290",
        startColor: Color("Navy"),
        endColor: Color("Custom Blue")
    )
}
