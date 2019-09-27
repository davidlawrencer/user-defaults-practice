//
//  UserDefaultWrapper.swift
//  userdefaults-warmup
//
//  Created by David Rifkin on 9/27/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

class UserDefaultWrapper {
    // saves in one space in memory
    static let manager = UserDefaultWrapper()
    
    func store(mode: Bool) {
        UserDefaults.standard.set(mode, forKey: modeKey)
    }
    
    func getMode() -> Bool? {
        return UserDefaults.standard.value(forKey: modeKey) as? Bool
    }
    
    // Mark: Private Keys
    private init() {}
    private let modeKey = "mode"
    

}
