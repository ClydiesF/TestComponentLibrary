//
//  SwiftUIView.swift
//  
//
//  Created by clydies freeman on 10/22/22.
//

import SwiftUI
import Utility

@available(iOS 14, macOS 10.15, *)
public struct SecondaryButton: View {
    let title: String
    let buttonType: ButtonType
    
    public init(title: String, buttonType: ButtonType) {
        self.title = title
        self.buttonType = buttonType
    }
    
   public var body: some View {
        Button {
            print("Secondary")
        } label: {
            Text(title)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
        }
        .buttonStyle(PlainButtonStyle())
        .background(Capsule().stroke(buttonType.color, lineWidth: 2))

    }
}

@available(iOS 13.0, macOS 10.15, *)
struct SecondaryButton_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack {
            SecondaryButton(title: "Secondary", buttonType: .primary)
                .padding()
            SecondaryButton(title: "Secondary", buttonType: .secondary)
                .padding()
            SecondaryButton(title: "Secondary", buttonType: .tertiary)
                .padding()
            SecondaryButton(title: "Secondary", buttonType: .disabled)
                .padding()
        }
    }
}
