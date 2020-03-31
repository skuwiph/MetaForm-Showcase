//
//  ApplicationState.swift
//  MetaForm Showcase
//
//  Created by Ian Seckington on 17/03/2020.
//  Copyright © 2020 Ian Seckington. All rights reserved.
//

import Foundation
import MetaForm

class ApplicationState: ObservableObject {
    var currentForm: MFForm?
    var rules: BusinessRules = BusinessRules()
    var currentQuestionIndex: Int = -1
}
