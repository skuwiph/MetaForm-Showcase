//
//  Control.swift
//  MetaForm Showcase
//
//  Created by Ian Seckington on 27/03/2020.
//  Copyright © 2020 Ian Seckington. All rights reserved.
//

import Foundation
import SwiftUI

struct MFControl: UIViewControllerRepresentable {
    typealias UIViewControllerType = MetaFormViewController
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<MFControl>) -> MetaFormViewController {
        let control = MetaFormViewController()
        return control
    }
    
    func updateUIViewController(_ uiViewController: MetaFormViewController, context: UIViewControllerRepresentableContext<MFControl>) {
       
    }
}
