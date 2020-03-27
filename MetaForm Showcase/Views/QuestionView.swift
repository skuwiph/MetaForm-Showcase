//
//  QuestionView.swift
//  MetaForm Showcase
//
//  Created by Ian Seckington on 18/03/2020.
//  Copyright © 2020 Ian Seckington. All rights reserved.
//

import SwiftUI
import MetaForm

struct QuestionView: View {
    @EnvironmentObject var applicationState: ApplicationState

    var body: some View {
        VStack {
            Spacer()
            Group {
                Text("This is a question text. It should be capable of wrapping, and should be of a reasonable length")
                    .font(.title)
                    .padding(10)
                    .foregroundColor(Color.init(red: 223/255, green: 220/255, blue: 240/255))
                Spacer()
                Text("This is a footnote and should be shorter text")
                    .font(.system(size: 14, weight: .light, design: .default))
                .padding(10)
            }
            .background(Color(red: 24/255, green: 24/255, blue: 80/255, opacity: 0.6))
            .edgesIgnoringSafeArea(.all)
            Spacer()
        }
            
    }
    
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView()
    }
}

