//
//  KeyboardManager.swift
//  QB
//
//  Created by Azzam AL-Rashed on 25/04/2024.
//

import IQKeyboardManagerSwift


final class KeyboardManager {
    static let shared = KeyboardManager()
    @MainActor func configuration() {
        IQKeyboardManager.shared.enable = true
        IQKeyboardManager.shared.enableAutoToolbar = false
        IQKeyboardManager.shared.resignOnTouchOutside = true
    }
}
