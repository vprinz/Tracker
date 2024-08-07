//
//  DataHelper.swift
//  Tracker
//
//  Created by Valerie N. Prinz on 07/08/2024.
//

import Foundation


struct DataHelper {
    static func projectUpdateDate(inputDate: Date) -> String {
        let df = DateFormatter()
        df.dateFormat = "EEEE, MMM d, yyyy"
        return df.string(from: inputDate)
    }
}
