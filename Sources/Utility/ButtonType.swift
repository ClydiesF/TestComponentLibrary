//
//  File.swift
//  
//
//  Created by clydies freeman on 10/22/22.
//

import Foundation
import SwiftUI

public enum ButtonType {
    case primary
    case secondary
    case tertiary
    case disabled
}

@available(iOS 13, macOS 10.15, *)
public extension ButtonType {
    var color: Color {
        switch self {
        case .primary:
            return Color.green
        case .secondary:
            return Color.red
        case .tertiary:
            return Color.purple
        case .disabled:
            return Color.gray
        }
    }
}
