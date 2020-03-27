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
        return Text("Hello, World!")
    }
    
    func loadForm() {
        if applicationState.currentForm == nil {
            let form = MFForm.createSimpleFormWith(name: "test", title: "Form Title")
            applicationState.currentForm = form
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
