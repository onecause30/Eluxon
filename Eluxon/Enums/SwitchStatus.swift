//
//  SwitchStatus.swift
//  Eluxon
//
//  Created by Anthony Hall on 8/16/18.
//  Copyright © 2018 Anthony Hall. All rights reserved.
//

import Foundation

enum SwitchStatus: Togglable {
    case on, off
    
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        
        }
    }
    
}
