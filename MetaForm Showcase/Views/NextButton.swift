//
//  NextButton.swift
//  MetaForm Showcase
//
//  Created by Ian Seckington on 30/03/2020.
//  Copyright © 2020 Ian Seckington. All rights reserved.
//

import SwiftUI

struct NextButton: View {
    var body: some View {
        GeometryReader { geometry in
            Button(action: {
                print("Clicked")
            }) {
                Text("Next")
                    .foregroundColor(Color(.white))
                Spacer()
                Image(systemName: "chevron.down.circle.fill")
            }
            .foregroundColor(Color(.white))
            .padding(10)
            .background(Color(.systemBlue))
            .cornerRadius(8)
            
        
        }
    }
}

struct NextButton_Previews: PreviewProvider {
    static var previews: some View {
        NextButton()
    }
}
