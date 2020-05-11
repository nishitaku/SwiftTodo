//
//  UserDefaultsClient.swift
//  Todo
//
//  Created by Takuro Nishino on 2020/05/11.
//  Copyright © 2020年 nishitaku. All rights reserved.
//

import Foundation

class UserDefaultsClient {
    let defaults = UserDefaults.standard
    
    func getUserDefaultTodoList() -> [String] {
        guard let unwrapped = defaults.stringArray(forKey: "todoList") else {
            return []
        }
        return unwrapped
    }
}

