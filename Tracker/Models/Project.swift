//
//  Project.swift
//  Tracker
//
//  Created by Valerie N. Prinz on 06/08/2024.
//

import Foundation
import SwiftData


@Model
class Project: Identifiable {
    @Attribute(.unique) var id: String
    var startDate = Date()
    var focus = ""
    
    @Relationship(deleteRule: .cascade, inverse: \ProjectUpdate.project)
    var updates = [ProjectUpdate]()
    
    init() {
        id = UUID().uuidString
    }
}
