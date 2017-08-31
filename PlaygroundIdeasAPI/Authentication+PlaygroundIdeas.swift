//
//  Authentication+PlaygroundIdeas.swift
//  Playground Ideas
//
//  Created by Apple on 01/09/2017.
//  Copyright © 2017 PlaygroundIdeasQuoll. All rights reserved.
//

import Foundation

extension PlaygroundIdeas {
    public class Authentication: NSObject {
        static public func register(username: String, password: String) {
            
        }
        
        static public func login(username: String, password: String) -> Bool {
            print("Welcome \(username)")
            return true
        }
    }
}
