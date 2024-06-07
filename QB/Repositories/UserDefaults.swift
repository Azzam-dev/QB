//
//  UserDefaults.swift
//  QB
//
//  Created by Azzam AL-Rashed on 25/04/2024.
//

import Foundation

extension UserDefaults {
    
    
    
    // MARK: Create
    func introCompleted() {
        set(true, forKey: "introCompleted")
    }
    
    // MARK: Read
    func didUserCompleteIntro() -> Bool {
        return bool(forKey: "introCompleted")
    }
    
    // MARK: Update
    
    // MARK: Delete
    
}
