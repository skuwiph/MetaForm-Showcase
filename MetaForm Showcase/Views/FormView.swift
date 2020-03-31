//
//  FormView.swift
//  MetaForm Showcase
//
//  Created by Ian Seckington on 17/03/2020.
//  Copyright © 2020 Ian Seckington. All rights reserved.
//

import SwiftUI
import MetaForm

struct FormView: View {
    @EnvironmentObject var applicationState: ApplicationState
    @State var display: DisplayQuestions?
    @State var question: MFQuestion?
    
    var body: some View {
        VStack {
            Spacer()
            QuestionView(question: $question)
            GeometryReader { geometry in
                HStack {
                    Spacer()
                    PreviousButton()
                    NextButton()
                        .frame(width: geometry.size.width / 1.75)
                    Spacer()
                }
            }
        }.onAppear() {
            self.display = MetaFormService.shared.getNextQuestionToDisplay(form: self.applicationState.currentForm!, rules: self.applicationState.rules, last: self.applicationState.currentQuestionIndex)
            
            self.question = (self.display?.questions[0])!
            
            debugPrint("Got \(String(describing: self.display?.questions.count)), atStart: \(String(describing: self.display?.atStart)) atEnd: \(String(describing: self.display?.atEnd)), lastItem: \(String(describing: self.display?.lastItem))")
        }
    }
}

struct FormView_Previews: PreviewProvider {
    static var previews: some View {
        FormView()
    }
}
