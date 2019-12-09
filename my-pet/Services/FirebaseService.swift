//
//  FirebaseService.swift
//  my-pet
//
//  Created by Mateus Sousa on 04/12/19.
//  Copyright © 2019 Mateus Sousa. All rights reserved.
//

import Foundation
import Firebase

class FirebaseService {
    
    static let share = FirebaseService()
    let refDB = Firestore.firestore()
    let refAuth = Auth.auth()
    
    public func login(username: String, password: String, completion: @escaping ((Bool, Error?) -> Void)){
        
        refAuth.signIn(withEmail: username, password: password) { (result, error) in
            if let _ = error {
                completion(false, error)
            }else{
                completion(true, error)
            }
        }
    }
    
    public func registerUser(username: String, password: String, nameUser: String, completion: @escaping ((Bool) -> Void)){
        refAuth.createUser(withEmail: username, password: password) { (result, error) in
            guard let _ = error else {
                completion(false)
                return
            }
            
            if let dataUser = result?.user{
                let documentUser: Dictionary<String, Any> = ["nameUser" : username,
                                                             "UID" : dataUser.uid]
                
                self.refDB.collection("users").document(dataUser.uid).setData(documentUser) { (err) in
                    if let _ = err{
                        completion(false)
                    }else{
                        completion(true)
                    }
                }
            }
        }
    }
}
