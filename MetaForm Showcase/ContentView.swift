//
//  ContentView.swift
//  MetaForm Showcase
//
//  Created by Ian Seckington on 17/03/2020.
//  Copyright © 2020 Ian Seckington. All rights reserved.
//

import SwiftUI
import MetaForm

struct ContentView: View {
    @EnvironmentObject var applicationState: ApplicationState
    
    var body: some View {
        loadForm()
        return FormView()
    }
    
    func loadForm() {
        if applicationState.currentForm == nil {
            debugPrint("Loading form")
            let form = MFForm.createSimpleFormWith(name: "test", title: "Form Title")
            let _ = form.addQuestion(name: "q1", caption: "This is a first question")
                .setFootnote("This is a footnote")
                .addTextControl(name: "t1", textType: .SingleLine, maxLength: 50, placeholder: "First name")
                .addValidator(MFValidator.Required(message: "Field is required"))
            
            let _ = form.getQuestion(name: "q1")!
                .addTextControl(name: "t2", textType: .SingleLine, maxLength: 50, placeholder: "Other names name")
                .addValidator(MFValidator.Required(message: "Field is required"))
            
            let _ = form.getQuestion(name: "q1")!
                .addTextControl(name: "t3", textType: .SingleLine, maxLength: 50, placeholder: "Last name")
                .addValidator(MFValidator.Required(message: "Field is required"))
            
            applicationState.currentForm = form
            
            debugPrint("Got form \(form.title) with \(form.questions.count) questions")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
