//
//  ViewController.swift
//  SimpleApp
//
//  Created by Paul Aguilar on 5/13/16.
//  Copyright © 2016 Aguilarpgc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  // MARK: - IBOutlets -
  
  @IBOutlet weak var phoneNumberTextField: UITextField!
  @IBOutlet weak var phoneFormattedTextField: UITextField!
  
  // MARK: - Override UIViewController -
  
  override func viewDidLoad() {
    
    super.viewDidLoad()
    
    phoneNumberTextField.addTarget(self, action: #selector(self.textFieldDidChange(_:)),
      forControlEvents: UIControlEvents.EditingChanged
    )
    
  }
  
  // MARK: - Methods -
  
  func textFieldDidChange(textField: UITextField) {
    
    guard let numberString = textField.text else {
      
      phoneFormattedTextField.text = ""
      return
    }
    
    phoneFormattedTextField.text = numberString.phoneNumberString()
  }

}

