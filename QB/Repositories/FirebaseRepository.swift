//
//  FirebaseRepository.swift
//  QB
//
//  Created by Azzam AL-Rashed on 25/04/2024.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseDatabase

// MARK: - Firebase References
fileprivate let database: DatabaseReference = Database.database().reference()
//fileprivate let cloudStorage: StorageReference = Storage.storage().reference()

// MARK: - Firebase Repository

final class FirebaseRepository {
    static let shared = FirebaseRepository()
    
    
    func configuration() {
        FirebaseApp.configure()
    }
    
    
    // MARK: Create
    
    // MARK: Read
    
    // MARK: Update
    
    // MARK: Delete
    
}
