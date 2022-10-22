//
//  File.swift
//  
//
//  Created by clydies freeman on 10/17/22.
//

import SwiftUI

@available(iOS 13.0, macOS 10.15, *)
public struct ReusableButton: View {
    
    public var body: some View {
        Button {
            print("This is a cool random button")
        } label: {
            Text("Random")
                .padding()
                .foregroundColor(.white)
        }
        .background(Capsule().fill(Color.blue))

        
    }
}
