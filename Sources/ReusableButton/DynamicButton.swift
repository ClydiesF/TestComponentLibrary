//
//  SwiftUIView.swift
//  
//
//  Created by clydies freeman on 10/22/22.
//

import SwiftUI
import Utility

@available(iOS 13.0, macOS 10.15, *)
public struct DynamicButton: View {
    let title: String
    let bodyText: String?
    let buttonType: ButtonType
    
    
    public init(title: String, bodyText: String?, buttonType: ButtonType) {
        self.title = title
        self.bodyText = bodyText
        self.buttonType = buttonType
    }
    
    public var body: some View {
        Button {
            print("hey")
        } label: {
            Text(title)
                .padding(.horizontal, 10)
                .padding(.vertical, 3)
        }
        .background(Capsule().fill(buttonType.color))
        .buttonStyle(PlainButtonStyle())

    }
}

@available(iOS 13.0, macOS 10.15, *)
struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            DynamicButton(title: "Primary", bodyText: "Something messy", buttonType: .primary)
                .padding()
            
            DynamicButton(title: "Secondary", bodyText: "Something messy", buttonType: .secondary)
                .padding()
            
            DynamicButton(title: "Tertiary", bodyText: "Something messy", buttonType: .tertiary)
                .padding()
            
            DynamicButton(title: "Disabled", bodyText: "Something messy", buttonType: .disabled)
                .padding()
        }
    }
}
