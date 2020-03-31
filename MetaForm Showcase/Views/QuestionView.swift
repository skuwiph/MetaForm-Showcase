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
    @Binding var question: MFQuestion?
    @EnvironmentObject var applicationState: ApplicationState
    
    var body: some View {
        ZStack {
            
            Color(red: 232/255, green: 234/255, blue: 240/255)
            VStack(alignment: .center, spacing: 15) {
                Text(String(question?.caption ?? "Nothing"))
                    .font(.headline)
                    .padding(25)
                    .foregroundColor(Color.init(red: 100/255, green: 100/255, blue: 200/255))
//                MFControl()
                Group {
                    if question?.captionFootnote != nil {
                    
                        Text(String(question?.captionFootnote ?? "") )
                            .font(.system(size: 14, weight: .light, design: .default))
                            .padding(15)
                            .foregroundColor(Color.init(red: 100/255, green: 100/255, blue: 200/255))
                    }
                }
            }
        }
    }
    
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        let q = MFQuestion(sectionId: 1, name: "Test", caption: "This is a caption")
        return QuestionView(question: .constant(q))
    }
}

