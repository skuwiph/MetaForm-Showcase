//
//  MetaFormControlController.swift
//  MetaForm Showcase
//
//  Created by Ian Seckington on 27/03/2020.
//  Copyright © 2020 Ian Seckington. All rights reserved.
//
import UIKit

class MetaFormViewController: UIViewController, UITextFieldDelegate, UITextViewDelegate {
    var activeField: UITextField?
    var lastField: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        view.backgroundColor = .gray
//        view.layer.borderWidth = 2
//        view.layer.borderColor = UIColor.red.cgColor
        debugPrint("Before: \(view.frame)")
//
//        let firstName = createTextField(isSecure: false, placeholder: "First or given name")
//        setLayoutFor(control: firstName, topAnchor: view.topAnchor, parent: view, height: 50)
//
//        let midName = createTextField(isSecure: false, placeholder: "Middle name(s)")
//        setLayoutFor(control: midName, topAnchor: firstName.bottomAnchor, parent: view, height: 50)
//
//        let lastName = createTextField(isSecure: false, placeholder: "Last or family name")
//        setLayoutFor(control: lastName, topAnchor: midName.bottomAnchor, parent: view, height: 50)
//
//        let petName = createTextField(isSecure: false, placeholder: "Pet's name")
//        setLayoutFor(control: petName, topAnchor: lastName.bottomAnchor, parent: scrollView, height: 50)
        
        let ml = createMultiLineTextField(numberOfLines: 10, placeholder: "Placeholder text")
        setLayoutFor(control: ml, topAnchor: view.topAnchor, parent: view, height: 100)
//        
//        view.translatesAutoresizingMaskIntoConstraints = false
//        view.heightAnchor.constraint(equalToConstant: 300).isActive = true

        
    }

    func createTextField(isSecure: Bool, placeholder: String) -> UITextField {
        let tag = lastField + 1
        let txtField = UITextField()
        txtField.tag = tag
        txtField.backgroundColor = .white
        txtField.placeholder = placeholder
        txtField.isSecureTextEntry = isSecure
        txtField.borderStyle = .roundedRect
        txtField.translatesAutoresizingMaskIntoConstraints = false
        txtField.delegate = self
        txtField.addTarget(self, action: #selector(textFieldDidChange), for: .editingChanged)
        txtField.autocorrectionType = .no
        txtField.shouldResignOnTouchOutsideMode = .enabled
//
//        txtField.layer.borderColor = UIColor.lightGray.cgColor
        checkForLastTag(tag)
        
        return txtField
    }
    
    func createMultiLineTextField(numberOfLines: Int, placeholder: String) -> UITextView {
        let tag = lastField + 1
        let txt = UITextView()
        
        txt.tag = tag
        txt.backgroundColor = .white
        txt.translatesAutoresizingMaskIntoConstraints = false
        txt.toolbarPlaceholder = placeholder
        txt.font = UIFont.systemFont(ofSize: 17)
        txt.layer.backgroundColor = UIColor.white.cgColor
        txt.layer.borderColor = UIColor.lightGray.cgColor
        txt.layer.borderWidth = 1
        txt.layer.cornerRadius = 4
        txt.layer.masksToBounds = true
        txt.contentInset = UIEdgeInsets(top: 5, left: 5, bottom: 5, right: 5)
        txt.textContainer.lineFragmentPadding = 0
        txt.textContainerInset = .zero
        
        txt.shouldResignOnTouchOutsideMode = .enabled
        txt.delegate = self
        checkForLastTag(tag)
        
        return txt;
    }
    
    private func checkForLastTag(_ tag: Int) {
        if tag > lastField {
            lastField = tag
            //            debugPrint("Last field is tagged \(tag)")
        }
    }
    
    func setLayoutFor(control: UIView, topAnchor: NSLayoutYAxisAnchor, parent: UIView, height: CGFloat) {
        parent.addSubview(control)
        
        control.topAnchor.constraint(equalTo: topAnchor, constant: 10).isActive = true
        control.leadingAnchor.constraint(equalTo: parent.leadingAnchor, constant: 15).isActive = true
        control.widthAnchor.constraint(equalTo: parent.widthAnchor, constant: -30).isActive = true
        control.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    @objc func textFieldDidBeginEditing(_ textField: UITextField) {
        activeField = textField
        
        //        if activeField!.tag == lastField {
        //            activeField!.returnKeyType = .done
        //        } else {
        //            activeField!.returnKeyType = .next
        //        }
        
        //        debugPrint("Active: \(textField.tag)")
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) -> Bool {
        debugPrint("\(textField.tag) \(textField.text ?? "")")
        return true
    }
    
    @objc func textViewDidChange(_ textView: UITextView) {
        debugPrint("\(textView.tag): '\(textView.text ?? "")'")
    }
    
    @objc func textFieldDidEndEditing(_ textField: UITextField) {
        //        debugPrint("Inactive \(textField.tag)")
        activeField = nil
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Return was pressed
        debugPrint("Return pressed")
        
        //        if let active = activeField {
        //            debugPrint("Has an active field")
        //            active.goNext
        //            active.resignFirstResponder()
        //
        //            let current = active.tag
        //            for c in scrollView.subviews {
        //                if c.tag > 0 {
        //                    let this = c.tag
        //                    if current + 1 == this {
        //                        debugPrint("Next responder is tagged with \(this)")
        //                        c.becomeFirstResponder()
        //                        break;
        //                    }
        //                }
        //            }
        //        }
        
        return true
    }
}

