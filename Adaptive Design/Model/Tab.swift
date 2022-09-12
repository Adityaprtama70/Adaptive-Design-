//
//  Tab.swift
//  Adaptive Design
//
//  Created by Adit on 05/09/22.
//

import SwiftUI

// MARK: Tab Enum Model, RewValue = Image File name in Asset
enum Tab: String,CaseIterable{
    case dashboard = "Dashboard"
    case transaction = "Transaction"
    case task = "Task"
    case document = "Documents"
    case store = "Store"
    case notification = "Notifications"
    case profile = "Profile"
    case setting = "Settings"
}
