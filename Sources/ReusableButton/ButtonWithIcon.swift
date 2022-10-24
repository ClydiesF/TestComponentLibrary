//
//  SwiftUIView.swift
//  
//
//  Created by clydies freeman on 10/23/22.
//

import SwiftUI
import Utility


@available(iOS 13, macOS 11.0, *)
public struct ButtonWithIcon: View {
    
    let title: String
    let iconType: IconType
    let buttonType: ButtonType
    let buttonMethod: ButtonMethod?
    
    public init(title: String, iconType: IconType, buttonType: ButtonType, method: ButtonMethod?) {
        self.title = title
        self.iconType = iconType
        self.buttonType = buttonType
        self.buttonMethod = method
    }
    
    public var body: some View {
        Button {
            print("Someting i dont care")
        } label: {
                if #available(iOS 13.0, *) {
                    if #available(macOS 11.0, *) {
                        Image(systemName: iconType.name)
                    } else {
                        Text("NA")
                    }
                } else {
                    Text("NA")
                }
                    Text(title)
        }.padding(5)
        .buttonStyle(PlainButtonStyle())

    }
}

@available(iOS 13, macOS 11.0, *)
struct ButtonWithIcon_Previews: PreviewProvider {
    static var previews: some View {
        ButtonWithIcon(title: "Hola", iconType: .person, buttonType: .primary) {
            print(" i love you")
        }
    }
}
