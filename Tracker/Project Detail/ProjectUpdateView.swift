//
//  ProjectUpdateView.swift
//  Tracker
//
//  Created by Valerie N. Prinz on 06/08/2024.
//

import SwiftUI

struct ProjectUpdateView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .foregroundStyle(.black)
                .shadow(radius: 5, x: 0, y: 4)
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("Thursday, September 20, 2023")
                        .padding(.leading)
                    Spacer()
                    Text("9 Hours")
                        .padding(.trailing)
                }
                .padding(.vertical, 5)
                .background {
                    Color("Orchid")
                }
                Text("Made progress on the progress bar")
                    .font(.smallHeadline)
                    .padding(.horizontal)
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas sit amet lacinia dolor. Etiam rhoncus et ante ac cursus. Vestibulum vitae mauris a sem fringilla venenatis. Donec et porta mauris.")
                    .padding(.horizontal)
                    .padding(.bottom)
            }
            .foregroundStyle(.white)
            .font(.regularText)
        }
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    ProjectUpdateView()
}
