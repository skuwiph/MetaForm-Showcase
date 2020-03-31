//
//  PreviousButton.swift
//  MetaForm Showcase
//
//  Created by Ian Seckington on 30/03/2020.
//  Copyright © 2020 Ian Seckington. All rights reserved.
//

import SwiftUI

struct PreviousButton: View {
    var body: some View {
        Button(action: {
            print("Clicked")
        }) {
            Image(systemName: "chevron.up.circle.fill")
        }
        .foregroundColor(Color(.white))
        .padding(14)
        .background(Color(.systemBlue))
        .cornerRadius(8)
    }
}

struct PreviousButton_Previews: PreviewProvider {
    static var previews: some View {
        PreviousButton()
    }
}
