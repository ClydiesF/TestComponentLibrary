//
//  File.swift
//  
//
//  Created by clydies freeman on 10/23/22.
//

import Foundation

public enum IconType{
    case play
    case pencil
    case network
    case person
    
}

public typealias ButtonMethod = () -> Void

extension IconType {
    public var name: String {
        switch self {
        case .play:
            return "play"
        case .pencil:
            return "pencil"
        case .network:
            return "network"
        case .person:
            return "person"
        }
    }
}
